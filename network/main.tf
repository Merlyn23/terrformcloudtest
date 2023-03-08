/*
 * Copyright 2023 Niveus Solutions Pvt. Ltd.
 *
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module "vpc" {
  source   = "./modules/terraform-google-network/"
  for_each                               = var.vpc_list
  network_name                           = each.value.vpc_name
  project_id                             = each.value.project_id
  delete_default_internet_gateway_routes = each.value.delete_default_internet_gateway_routes
  subnets                                = each.value.subnets
  secondary_ranges                       = each.value.secondary_ranges
}

