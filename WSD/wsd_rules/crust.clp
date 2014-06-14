;##############################################################################
;#  Copyright (C) 2002-2005 Preeti Pradhan (pradhan.preet@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################

;Added by Preeti(3-12-13)
;Minerals occur naturally in the Earth's crust. 
;Kanija pqWvI ke BUpatala meM svaBAvika rUpa se pAye jAwe hEM.
(defrule crust_BUpatala
(declare (salience 600))
(id-root ?id crust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
(id-root ?id1 earth)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUpatala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crust.clp 	crust_BUpatala   "  ?id "  BUpatala )" crlf))
)
;#############################Defaults rule#######################################
;Added by Preeti(3-12-13)
;Bake until the crust is golden. 
;jaba waka UparI parawa sunaharI nA ho jAye waba waka seMkie.
(defrule crust_UparI_parawa
(declare (salience 500))
(id-root ?id crust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UparI_parawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crust.clp 	crust_UparI_parawa   "  ?id " UparI_parawa )" crlf))
)
