# Ansible Role: Install Firefox

[![License][license-image]][license-url] [![Ansible Galaxy][ansible-galaxy-image]][ansible-galaxy-url] [![CircleCI][circleci-image]][circleci-url]

Install [Firefox](https://www.firefox.com/) for Linux and Windows.

## Work on

### Ansible Galaxy style

```yaml
  platforms:
    - name: Fedora
      versions:
        - 31
        - 32
    - name: Ubuntu
      versions:
        - focal
        - bionic
        - xenial
    - name: Debian
      version:
        - oldstable
        - stable
        # - testing
    - name: EL (CentOS)
      versions:
        - 7
        - 8
    - name: opensuse
      vesrion:
        - tumbleweed
    - name: ArchLinux
      version:
        - any
    - name: windows
      version:
        - 2008x64 (7 64bit)
        - 2008x86 (7 32bit)
        - 2019 (10 64bit)
```

### Table style

- :heavy_check_mark: - work, tested, ok.
- :construction: - TODO. Work in progress.
- :x: - not work. Don't try.

|.              |Firefox stable    |Firefox beta      |Firefox nightly   |Firefox developer |Firefox esr       |.  |Flatpak           |Snap              |msi               |exe               |tar.bz2           |.  |32 bit            |64 bit            |
|---------------|------------------|------------------|------------------|------------------|------------------|---|------------------|------------------|------------------|------------------|------------------|---|------------------|------------------|
|OS             |                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|Windows        |                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|7              |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |:x:               |:x:               |:heavy_check_mark:|:heavy_check_mark:|:x:               |   |:heavy_check_mark:|:heavy_check_mark:|
|10             |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |:x:               |:x:               |:heavy_check_mark:|:heavy_check_mark:|:x:               |   |:heavy_check_mark:|:heavy_check_mark:|
|.              |                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|Ubuntu         |                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|focal          |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|:x:               |:x:               |:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|
|eoan           |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|:x:               |:x:               |:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|
|disco          |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|:x:               |:x:               |:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|
|cosmic         |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|:x:               |:x:               |:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|
|bionic         |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|:x:               |:x:               |:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|
|xenial         |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|:x:               |:x:               |:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|
|.              |                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|Debian         |                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|jessie         |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|:x:               |:x:               |:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|
|stretch        |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|:x:               |:x:               |:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|
|buster         |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|:x:               |:x:               |:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|
|stable         |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|:x:               |:x:               |:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|
|testing        |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|:x:               |:x:               |:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|
|.              |                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|EL (CentOS)    |                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|8              |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|:x:               |:x:               |:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|
|7              |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|:x:               |:x:               |:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|
|.              |                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|opensuse       |                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|tumbleweed     |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|:x:               |:x:               |:heavy_check_mark:|   |:heavy_check_mark:|:heavy_check_mark:|
|.              |                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|ArchLinux      |                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|any            |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |:heavy_check_mark:|:construction:    |:x:               |:x:               |:heavy_check_mark:|   |:x:               |:heavy_check_mark:|
|.              |                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|Fedora         |                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|32             |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |                  |                  |                  |                  |                  |   |:heavy_check_mark:|:heavy_check_mark:|
|31             |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |                  |                  |                  |                  |                  |   |:heavy_check_mark:|:heavy_check_mark:|
|.              |                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|Package manager|                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|deb/rpm        |:heavy_check_mark:|:x:               |:x:               |:heavy_check_mark:/:x:               |:x:               |   |                  |                  |                  |                  |                  |   |                  |                  |
|Flatpak        |:heavy_check_mark:|:x:               |:x:               |:x:               |:x:               |   |                  |                  |                  |                  |                  |   |                  |                  |
|Snap           |:heavy_check_mark:|:heavy_check_mark:|:construction:    |:construction:    |:heavy_check_mark:|   |                  |                  |                  |                  |                  |   |:x:               |:heavy_check_mark:|
|msi            |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |                  |                  |                  |                  |                  |   |                  |                  |
|exe            |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |                  |                  |                  |                  |                  |   |                  |                  |
|tar.bz2        |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |                  |                  |                  |                  |                  |   |                  |                  |
|.              |                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|Architecture   |                  |                  |                  |                  |                  |   |                  |                  |                  |                  |                  |   |                  |                  |
|32             |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |                  |                  |                  |                  |                  |   |                  |                  |
|64             |:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|   |                  |                  |                  |                  |                  |   |                  |                  |

## Requirements

[min_ansible_version: 2.8](https://docs.ansible.com/ansible/latest/modules/flatpak_module.html)

## Role Variables

```yaml
---
#--- Firefox Edition ---#

firefox_edition: stable

# https://www.mozilla.org/en-US/firefox/channel/desktop/#beta
# firefox_edition: beta

# https://www.mozilla.org/en-US/firefox/channel/desktop/#nightly
# firefox_edition: nightly

# https://www.mozilla.org/en/firefox/developer/
# firefox_edition: developer

# https://www.mozilla.org/en/firefox/enterprise/
# firefox_edition: esr

#--- Firefox method install ---#

# https://repology.org/project/firefox/versions
firefox_method_install: package-manager

# https://en.wikipedia.org/wiki/Flatpak
# https://flathub.org/apps/details/org.mozilla.firefox
# firefox_method_install: flatpak

# https://en.wikipedia.org/wiki/Snappy_(package_manager)
# https://snapcraft.io/firefox
# firefox_method_install: snap

# https://www.mozilla.org/en/firefox/download/thanks/
# firefox_method_install: tar.bz2

#--- Firefox architecture ---#

firefox_arch: 64

# https://en.wikipedia.org/wiki/64-bit_computing
# firefox_arch: 32

#--- Firefox language ---#

# Default value: firefox_lang == your_windows_system_language

# firefox_lang: ru
# firefox_lang: en-US

#--- Firefox api urls ---#

firefox_versions_url: https://product-details.mozilla.org/1.0/firefox_versions.json

# Need for Windows.
firefox_available_languages_url: https://product-details.mozilla.org/1.0/languages.json

#--- Firefox installer type. Windows only!!! ---#

firefox_win_installer_type: exe

# firefox_win_installer_type: msi

#--- Firefox local download path ---#

firefox_windows_local_download_path: '{{ ansible_env.TMP }}\firefox'

firefox_linux_local_download_path: '/var/cache/firefox'

#--- Firefox install paths. Only for tar.bz2 ---#

firefox_linux_install_path: '/opt/firefox/{{ firefox_edition }}'

firefox_linux_path_to_bin: '{{ firefox_linux_install_path }}/firefox/firefox'

firefox_linux_path_to_icon: '{{ firefox_linux_install_path }}/firefox/browser/chrome/icons/default/default128.png'

#--- Firefox checksum algorithm ---#

firefox_checksum_algorithm: sha256

# firefox_checksum_algorithm: sha512

#--- Firefox version ---#

firefox_version: latest

# firefox_version: 75.0

#--- Apt repo section ---#

# https://repolib.readthedocs.io/en/latest/deb822-format.html

# If you *NOT* use apt-cacher-ng or other caching proxy - select "https".
http_or_https: http
# http_or_https: https

# https://www.opennet.ru/opennews/art.shtml?num=60019

mozilla_apt_repo_path_to_sources: /etc/apt/sources.list.d/mozilla.sources

mozilla_gpg_repo_key_url: https://packages.mozilla.org/apt/repo-signing-key.gpg

mozilla_apt_repo_architectures:
  - amd64
mozilla_apt_repo_components:
  - main
mozilla_apt_repo_suites:
  - mozilla
mozilla_apt_repo_types:
  - deb
mozilla_apt_repo_uris:
  - "{{ http_or_https }}://packages.mozilla.org/apt"
mozilla_apt_repo_x_repolib_name: Official Mozilla repo

```

## Dependencies

### If you want install over Flatpak

Version one:

```bash
cd /path/to/you/ansible/roles
git clone https://github.com/don-rumata/ansible-role-install-flatpak
```

Version two:

```bash
ansible-galaxy install don_rumata.ansible_role_install_flatpak
```

### If you want install over Snap

Version one:

```bash
cd /path/to/you/ansible/roles
git clone https://github.com/don-rumata/ansible-role-install-snap
```

Version two:

```bash
ansible-galaxy install don_rumata.ansible_role_install_snap
```

### If you want deploy to Windows 7

Download and install [Windows Management Framework 5.1](https://www.microsoft.com/en-us/download/details.aspx?id=54616)

## HowTo

Quick config WinRM for Windows: <https://ru.stackoverflow.com/a/949971/191416>

## Example Playbooks

Install latest stable Firefox on Windows or Linux over package manager of you distro:

`install-firefox.yml`:

```yaml
- name: Install FireFox
  hosts: all
  strategy: free
  serial:
    - "100%"
  roles:
    - ansible-role-install-firefox
  tasks:
```

`install-firefox-over-flatpak-v1.yml`:

```yaml
- name: Install FireFox
  hosts: all
  strategy: free
  serial:
    - "100%"
  roles:
    - ansible-role-install-flatpak
    - ansible-role-install-firefox
  vars:
    firefox_method_install: flatpak
  tasks:
```

`install-firefox-over-snap-v2.yml`:

```yaml
- name: Install FireFox
  hosts: all
  strategy: free
  serial:
    - "100%"
  roles:
    - don_rumata.ansible_role_install_snap
    - ansible-role-install-firefox
  vars:
    firefox_method_install: snap
  tasks:
```

## License

Apache License, Version 2.0

## Author Information

[don Rumata](https://github.com/don-rumata)

## TODO

- ~~Add tests.~~

- Add more tests.

- Add ArchLinux firefox-i18n-{{ system_lang }}

- Add custom languages.

- Add get links over http-header

- Add uninstall.yml

## Thanks

- [Arkadiy Illarionov](https://github.com/qarkai)

- [RedMadness](https://github.com/RedMadness)

- <https://tablesgenerator.com/markdown_tables>

- <https://www.convertcsv.com/csv-to-markdown.htm>

- <https://gist.github.com/parmentf/035de27d6ed1dce0b36a>

- <https://gist.github.com/rxaviers/7360908>

[license-image]: https://img.shields.io/github/license/don-rumata/ansible-role-install-firefox.svg
[license-url]: https://opensource.org/licenses/Apache-2.0

[ansible-galaxy-image]: https://img.shields.io/badge/ansible_galaxy-don__rumata.ansible__role__install__firefox-blue.svg
[ansible-galaxy-url]: https://galaxy.ansible.com/don_rumata/ansible_role_install_firefox

[circleci-image]: https://circleci.com/gh/don-rumata/ansible-role-install-firefox.svg?style=shield
[circleci-url]: https://circleci.com/gh/don-rumata/ansible-role-install-firefox
