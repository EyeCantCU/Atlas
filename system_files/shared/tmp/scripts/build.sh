#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

BUILD_TYPE=$1

# Helper functions.
RECIPE_FILE="/usr/share/ublue-os/recipe.yml"
get_yaml_array() {
    mapfile -t "${1}" < <(yq -- "${2}" "${RECIPE_FILE}")
}
get_yaml_string() {
    yq -- "${1}" "${RECIPE_FILE}"
}

# Automatically determine which Fedora version we're building.
FEDORA_VERSION="$(cat /usr/lib/os-release | grep -Po '(?<=VERSION_ID=)\d+')"

# Welcome.
echo "Building Atlas (${BUILD_TYPE}), based on Bazzite ${FEDORA_VERSION}."

# Add custom repos.
get_yaml_array repos ".${BUILD_TYPE}.rpm.repos[]"
if [[ ${#repos[@]} -gt 0 ]]; then
    echo "-- Adding ${BUILD_TYPE} repos defined in recipe.yml --"
    for repo in "${repos[@]}"; do
        repo="${repo//%FEDORA_VERSION%/${FEDORA_VERSION}}"
        wget "${repo}" -P "/etc/yum.repos.d/"
    done
    echo "---"
fi

get_yaml_array repos ".${BASE_IMAGE_NAME}.rpm.repos[]"
if [[ ${#repos[@]} -gt 0 ]]; then
    echo "-- Adding ${BASE_IMAGE_NAME} repos defined in recipe.yml --"
    for repo in "${repos[@]}"; do
        repo="${repo//%FEDORA_VERSION%/${FEDORA_VERSION}}"
        wget "${repo}" -P "/etc/yum.repos.d/"
    done
    echo "---"
fi

# Ensure that all script files are executable.
find /tmp/scripts -type f -exec chmod +x {} \;

# Run "pre" scripts.
run_scripts() {
    script_mode="$1"
    get_yaml_array buildscripts ".${BUILD_TYPE}.scripts.${script_mode}[]"
    if [[ ${#buildscripts[@]} -gt 0 ]]; then
        echo "-- Running $BUILD_TYPE [${script_mode}] scripts defined in recipe.yml --"
        for script in "${buildscripts[@]}"; do
            echo "Running [${script_mode}]: ${script}"
            "/tmp/scripts/${script_mode}/${script}" "${script_mode}"
        done
        echo "---"
    fi
    get_yaml_array buildscripts ".${BASE_IMAGE_NAME}.scripts.${script_mode}[]"
    if [[ ${#buildscripts[@]} -gt 0 ]]; then
        echo "-- Running $BASE_IMAGE_NAME [${script_mode}] scripts defined in recipe.yml --"
        for script in "${buildscripts[@]}"; do
            echo "Running [${script_mode}]: ${script}"
            "/tmp/scripts/${script_mode}/${script}" "${script_mode}"
        done
        echo "---"
    fi
}
run_scripts "pre"

# Remove RPMs.
get_yaml_array remove_rpms ".${BUILD_TYPE}.rpm.remove[]"
if [[ ${#remove_rpms[@]} -gt 0 ]]; then
    echo "-- Removing ${BUILD_TYPE} RPMs defined in recipe.yml --"
    echo "Removing: ${remove_rpms[@]}"
    rpm-ostree override remove "${remove_rpms[@]}"
    echo "---"
fi

get_yaml_array remove_rpms ".${BASE_IMAGE_NAME}.rpm.remove[]"
if [[ ${#remove_rpms[@]} -gt 0 ]]; then
    echo "-- Removing ${BASE_IMAGE_NAME} RPMs defined in recipe.yml --"
    echo "Removing: ${remove_rpms[@]}"
    rpm-ostree override remove "${remove_rpms[@]}"
    echo "---"
fi

# Create symlinks to fix packages that create directories in /opt
get_yaml_array OPTFIX '.${BUILD_TYPE}.rpm.optfix[]'
if [[ ${#OPTFIX[@]} -gt 0 ]]; then
    echo "Creating symlinks to fix packages that install to /opt"
    # Create symlinks for each directory specified in recipe.yml
    for OPTPKG in "${OPTFIX[@]}"; do
        OPTPKG="${OPTPKG%\"}"
        OPTPKG="${OPTPKG#\"}"
        mkdir -p "/usr/lib/opt/${OPTPKG}"
        ln -s "/usr/lib/opt/${OPTPKG}" "/var/opt/${OPTPKG}"
        echo "Created symlink for ${OPTPKG}"
    done
fi

# Install RPMs.
get_yaml_array install_rpms ".${BUILD_TYPE}.rpm.install[]"
if [[ ${#install_rpms[@]} -gt 0 ]]; then
    echo "-- Installing ${BUILD_TYPE} RPMs defined in recipe.yml --"
    echo "Installing: ${install_rpms[@]}"
    rpm-ostree install "${install_rpms[@]}"
    echo "---"
fi

get_yaml_array install_rpms ".${BASE_IMAGE_NAME}.rpm.install[]"
if [[ ${#install_rpms[@]} -gt 0 ]]; then
    echo "-- Installing ${BASE_IMAGE_NAME} RPMs defined in recipe.yml --"
    echo "Installing: ${install_rpms[@]}"
    rpm-ostree install "${install_rpms[@]}"
    echo "---"
fi

# Run "post" scripts.
run_scripts "post"
