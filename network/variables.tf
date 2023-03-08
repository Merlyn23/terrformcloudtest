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

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

variable "vpc_list" {
  description = "List of vpcs which needs to be created. alongwith their details"
  type = map(object({
    vpc_name                        = string
    project_id                             = string
    delete_default_internet_gateway_routes = bool
    subnets                                = list(map(string))
    secondary_ranges                       = map(list(object({ range_name = string, ip_cidr_range = string })))
  }))
}
