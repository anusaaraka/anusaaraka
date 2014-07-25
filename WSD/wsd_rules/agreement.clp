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


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali vidyapith)7-Feb-2014
;The two sides failed to reach agreement.[oald]
;दोनो पक्ष सहमती पर पहुँचने में असफल हुये
(defrule agreement1
(declare (salience 3000))
(id-root ?id agreement)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object  ?kri ?id)(kriyA-subject  ?kri ?id))
(id-word ?kri reach)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahamawI_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agreement.clp 	agreement1   "  ?id "  sahamawI_para )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali vidyapith)7-Feb-2014
;Are we in agreement about the price?[oald]
;क्या हम सब कीमत के बारे में सहमती में हैं
(defrule agreement2
(declare (salience 3000))
(id-root ?id agreement)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  sahamawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agreement.clp 	agreement2   "  ?id " sahamawI )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali vidyapith)7-Feb-2014
;They terminated their agreement.[oald]
;उन्होंने उनका करार नामा अंत कीया 
;The agreement was signed during a meeting at the UN.[oald]
;यू एन की बैठक के दौरान करार नामा हस्ताक्षर किया गया था
(defrule agreement3
(declare (salience 4000))
(id-root ?id agreement)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object  ?kri ?id)(kriyA-subject  ?kri ?id))
(id-root ?kri terminate|sign)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karAra_nAmA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agreement.clp 	agreement3   "  ?id " karAra_nAmA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali vidyapith)7-Feb-2014
;You'll have to get your parents' agreement if you want to go on the trip.[oald]
;आपको आपके माँ बाप की सहमती लेनी होगी यदि आप यात्रा पर जाना चाहते हैं . 
(defrule agreement4
(declare (salience 3000))
(id-root ?id agreement)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-RaRTI_viSeRaNa  ?id ?)
(kriyA-object  ?kri ?id)
(id-root ?kri get)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahamawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agreement.clp 	agreement4   "  ?id " sahamawI )" crlf))
)


;*****************************DEFAULT RULES******************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali vidyapith)7-Feb-2014
;The dispute was settled by an agreement that satisfied both sides.[cambridge] 
;विवाद एक समझौते के द्वारा निपटाया गया जिससे दोनों पक्ष संतुष्ट है .
(defrule agreement0
(declare (salience 0))
(id-root ?id agreement)
?mng <-(meaning_to_be_decided ?id)

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJOwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agreement.clp 	agreement0   "  ?id "  samaJOwA )" crlf))
)

