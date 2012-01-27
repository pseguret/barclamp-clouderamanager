#
# Cookbook Name: clouderamanager
# Recipe: edgenode.rb
#
# Copyright (c) 2011 Dell Inc.
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
#

#######################################################################
# Begin recipe transactions
#######################################################################
debug = node[:clouderamanager][:debug]
Chef::Log.info("CLOUDERAMANAGER : BEGIN clouderamanager:edgenode") if debug

# Installs the Cloudera Manager client components.
if node[:clouderamanager][:use_cloudera_manager] == "true"
  include_recipe 'clouderamanager::cm-client'
end

#######################################################################
# End of recipe transactions
#######################################################################
Chef::Log.info("CLOUDERAMANAGER : END clouderamanager:edgenode") if debug