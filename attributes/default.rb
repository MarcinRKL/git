#
# Author:: Jamie Winsor (<jamie@vialstudios.com>)
# Cookbook Name:: git
# Attributes:: default
#
# Copyright 2008-2012, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

case platform
when 'windows'
  set[:git][:version] = "1.7.9-preview20120201"
  set[:git][:url] = "http://msysgit.googlecode.com/files/Git-#{node[:git][:version]}.exe"
  set[:git][:checksum] = "698bb4e9f9eb8b2a1780b15404dd4460"
when "mac_os_x"
  default[:git][:osx_dmg][:app_name]    = "git-1.7.11.1-intel-universal-snow-leopard"
  default[:git][:osx_dmg][:volumes_dir] = "Git 1.7.11.1 Snow Leopard Intel Universal"
  default[:git][:osx_dmg][:package_id]  = "GitOSX.Installer.git17111.git.pkg"
  default[:git][:osx_dmg][:url]         = " https://github.com/downloads/timcharper/git_osx_installer/git-1.7.11.1-intel-universal-snow-leopard.dmg"
  default[:git][:osx_dmg][:checksum]    = "661c3fcf765572d3978df17c7636d59e"
end
