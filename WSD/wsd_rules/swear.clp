;#############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;######################################################################
;@@@ Added by Jagriti(11.3.2014)
;I have swear off smoking.[rajpal]
;मैंने धूम्रपान सपथ-पूर्वक छोड दिया . 
(defrule swear0
(declare (salience 5000))
(id-root ?id swear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 off)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SapaWa-pUrvaka_CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " swear.clp	swear0  "  ?id "  " ?id1 "  SapaWa-pUrvaka_CodZa_xe  )" crlf))
)
;@@@ Added by Jagriti(10.3.2014)
;He swears at his neighbours.[rajpal]
;वह अपने पडोसियों को गली बकता है .  
(defrule swear1
(declare (salience 4900))
(id-root ?id swear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-at_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galI_baka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swear.clp 	swear1  "  ?id "  galI_baka)" crlf))
) 
;@@@ Added by Jagriti(10.3.2014)
;The judge swore the witness.[rajpal]
;न्यायाधीश ने गवाह को शपथ दिलाई . 
(defrule swear2
(declare (salience 4800))
(id-root ?id swear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 witness)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SapaWa_xilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swear.clp 	swear2  "  ?id "  SapaWa_xilA)" crlf))
) 
;....default rule....
;@@@ Added by Jagriti(10.3.2014)
;He swore to tell the truth.[rajpal]
;उसने सच को बोलने की कसम खायी .
(defrule swear3
(declare (salience 100))
(id-root ?id swear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kasama_KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swear.clp 	swear3  "  ?id "  kasama_KA)" crlf))
) 


