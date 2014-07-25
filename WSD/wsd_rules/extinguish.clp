;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 @gmail.com)
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

;@@@ Added by Pramila(BU) on 10-02-2014
;Firefighters tried to extinguish the flames. ;oald
;अग्निशामकों ने लपटें बुझाने की कोशिश की.
;All lights had been extinguished.    ;oald  
;सभी बत्तियाँ बुझा दी गई है.
;Please extinguish your cigarette.  ;shiksharthi
;कृपया अपनी सिगरेट बुझा दीजिए.
;Firemen extinguish fires by spraying water on them.  ;shiksharthi
;फायरमैन आग पर पानी छोड़कर बुझा देते हैं.
(defrule extinguish1
(declare (salience 4900))
(id-root ?id extinguish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-object  ?id ?id2)(kriyA-subject  ?id ?id2))
(id-root ?id2 flame|fire|light|cigarette)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buJA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extinguish.clp 	extinguish1   "  ?id "  buJA_xe )" crlf)
))


;@@@ Added by Pramila(BU) on 10-02-2014
;Firefighters tried to extinguish the flames. ;oald
;अग्निशामकों ने आग बुझाने की कोशिश की.
(defrule extinguish2
(declare (salience 4950))
(id-root ?id extinguish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(kriyA-object  ?id ?id2)
(id-root ?id2 flame|fire|light|cigarette)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extinguish.clp 	extinguish2   "  ?id "  buJA )" crlf)
))

;-----------------default rules---------------------
;@@@ Added by Pramila(BU) on 10-02-2014
;News of the bombing extinguished all hope of peace. ;oald
;गोलाबारी की खबर ने शांति की सभी उम्मीदें खत्म कर दी.
(defrule extinguish3
(declare (salience 100))
(id-root ?id extinguish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kawma_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extinguish.clp 	extinguish3   "  ?id "  Kawma_kara_xe )" crlf)
))

;@@@ Added by Pramila(BU) on 10-02-2014
(defrule extinguish4
(declare (salience 0))
(id-root ?id extinguish)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kawma_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extinguish.clp 	extinguish4   "  ?id "  Kawma_kara_xe )" crlf)
))
