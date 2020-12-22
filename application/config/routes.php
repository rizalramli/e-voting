<?php
defined('BASEPATH') or exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|    example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|    https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|    $route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|    $route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|    $route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:    my-controller/index    -> my_controller/index
|        my-controller/my-method    -> my_controller/my_method
 */
$route['default_controller']   = 'LoginController/indexVoter';
$route['404_override']         = '';
$route['translate_uri_dashes'] = false;

$route['login']             = 'LoginController/indexVoter';
$route['login/store_voter'] = 'LoginController/storeVoter';
$route['login_admin']       = 'LoginController/indexAdmin';
$route['login/store_admin'] = 'LoginController/storeAdmin';
$route['logout_voter']            = 'LoginController/logoutVoter';
$route['logout_admin']            = 'LoginController/logoutAdmin';

$route['voting']             = 'master/VotingController/index';
$route['voting/create']      = 'master/VotingController/create';
$route['voting/store']       = 'master/VotingController/store';
$route['voting/(:any)/show'] = 'master/VotingController/show/$1';
$route['voting/edit/(:any)'] = 'master/VotingController/editAjax/$1';
$route['voting/update']      = 'master/VotingController/updateAjax';

$route['party']               = 'master/PartyController/index';
$route['party/create']        = 'master/PartyController/create';
$route['party/store']         = 'master/PartyController/store';
$route['party/(:any)/edit']   = 'master/PartyController/edit/$1';
$route['party/update']        = 'master/PartyController/update';
$route['party/(:any)/delete'] = 'master/PartyController/delete/$1';

$route['voter']           = 'master/VoterController/index';
$route['voter/sendEmail'] = 'master/VoterController/sendEmail';
$route['voter/(:any)/sendEmailByEmail']   = 'master/VoterController/sendEmailByEmail/$1';
$route['verify/(:any)'] = 'master/VoterController/verify/$1';
$route['verify/submit/store']  = 'master/VoterController/verifyStore';


$route['election']             = 'transaction/ElectionController/index';
$route['election/(:any)/show'] = 'transaction/ElectionController/show/$1';
$route['election/store']       = 'transaction/ElectionController/storeAjax';

$route['candidate']             = 'master/CandidateController/index';
$route['candidate/(:any)/create'] = 'master/CandidateController/create/$1';
$route['candidate/(:any)/delete'] = 'master/CandidateController/delete/$1';
$route['candidate/store']       = 'master/CandidateController/store';
$route['candidate/(:any)/edit']   = 'master/CandidateController/edit/$1';
$route['candidate/(:any)/show'] = 'master/CandidateController/show/$1';
$route['candidate/edit/(:any)'] = 'master/CandidateController/editAjax/$1';
$route['candidate/update']      = 'master/CandidateController/update';

$route['recapitulation'] = 'dashboard/RecapitulationController/indexRecapitulation';
$route['recapitulation/(:any)/show_recapitulation'] = 'dashboard/RecapitulationController/showRecapitulation/$1';
$route['selection'] = 'dashboard/RecapitulationController/indexSelection';
$route['selection/(:any)/show_selection'] = 'dashboard/RecapitulationController/showSelection/$1';
$route['selection/edit_selection/(:any)'] = 'dashboard/RecapitulationController/editSelection/$1';
$route['selection/update_selection/sah'] = 'dashboard/RecapitulationController/updateSelectionSah';
$route['selection/update_selection/tidak_sah'] = 'dashboard/RecapitulationController/updateSelectionTidakSah';
