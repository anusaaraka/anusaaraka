;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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

;The minister argued against making cuts in military spending. 
;manwrI ne sEnika Karce meM katOwI karane ke viruxXa warka_praswuwa kiye.
;The minister argued that cuts in military spending were needed.
;manwrI ne warka_praswuwa kiyA ki sEnika Karce meM katOwI kI AvaSyakawA hE.
;Similarly, we can argue that it lies on the median MQ and NR.
;isI prakAra hama warka_praswuwa kara sakawe hEM ki yaha mAXyikA MQ Ora NR para BI avasWiwa hogA.
(defrule argue0
(declare (salience 3700))
(id-root ?id argue)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) for|against|in|that)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warka_praswuwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  argue.clp 	argue0   "  ?id "  warka_praswuwa_kara )" crlf))
)

;The evidence argues a change in policy.
;pramANa nIwi meM parivarwana sUciwa karawA hE.
;The latest move argues a change in government thinking. 
;sabase aXika navInawama upAya sarakAra kI soca meM parivarwana sUciwa karawA hE.
(defrule argue1
(declare (salience 3500))
(id-root ?id argue)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(viSeRya-det_viSeRaNa  ?id1 ?det)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  argue.clp 	argue1   "  ?id "  sUciwa_kara )" crlf))
)

;--------------------------- Default rule ----------------------------------
;Dont argue with your mother.
;ApakI mAz ke sAWa bahasa_mawa kIjie.
;They started arguing about politics.
;ve rAjanIwi ke bAre meM bahasa karane lage.
(defrule argue2
(id-root ?id argue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahasa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  argue.clp    argue2   "  ?id "  bahasa_kara )" crlf))
)


;****************************************** EXAMPLES ***********************************************

;The essay argues a point that many of us already know.
;Do not argue with your mother.
;They started arguing about politics.
;The minister argued for making cuts in military spending. 
;The minister argued in favour of making cuts in military spending. 
;The minister argued against making cuts in military spending. 
;The minister argued that cuts in military spending were needed. 
;You can argue the case either way.
;The evidence argues a change in policy.
;The latest move argues a change in government thinking. 
