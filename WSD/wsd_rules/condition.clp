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
;Added by Preeti(6-12-13)
;They have agreed to the ceasefire provided their conditions are met. 
;ve  yuxXavirAma ke liye sahamawa_ho cuke hEM yaxi unakI SarweM pUrI howI hEM.
(defrule condition_Sarwa
(declare (salience 550))
(id-root ?id condition)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-on_saMbanXI  ? ?id)(viSeRya-of_saMbanXI  ? ?id)(kriyA-karma ? ?id)
(and(viSeRya-to_saMbanXI  ?id1 ?id)(id-root ?id1 subject))
(and(kriyA-object  ?id2 ?id) (id-root ?id2 impose)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sarwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  condition.clp 	condition_Sarwa   "  ?id "  Sarwa )" crlf))
)

;#############################Defaults rule#######################################
;Added by Preeti(6-12-13)
;He is in no condition to travel. 
;vaha yAwrA karane kI sWiwi meM nahIM hE.
(defrule condition_sWiwi
(declare (salience 500))
(id-root ?id condition)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWiwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  condition.clp 	condition_sWiwi   "  ?id "  sWiwi )" crlf))
)
;################### Additional Examples ####################
;My bike's a few years old but it's in really good condition. 
;Visitors are allowed in the gardens on condition that they don't touch the plants.
;The house is in a generally poor condition.
;The motorcyclist was in a critical condition in hospital last night.
;You are in no condition to go anywhere.
;He suffers from a serious heart condition.
;The changing economic conditions are very bad.
;The plants grow best in cool, damp conditions.
;The offer is subject to certain conditions.
;They will give us the money on one condition that we pay it back within six months.
;They agreed to lend us the car on condition that we returned it before the weekend.
;Congress can impose strict conditions on the bank.
;They have agreed to the ceasefire provided their conditions are met.
;A good training programme is one of the conditions for successful industry.
;He spoke angrily about the condition of the urban poor.
;Work is basic to the human condition
