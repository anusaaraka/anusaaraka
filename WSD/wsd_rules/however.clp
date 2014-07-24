;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
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
;@@@ Added by Prachi Rathore
;They don't lose their way however far they go.[gayannidhi]
;वे उनका मार्ग नहीं खोते हैं  जितना भी दूर वे चले जायें . 
(defrule however0
(declare (salience 5000))
(id-root ?id however)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jiwanA_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  however.clp 	however0   "  ?id "  jiwanA_BI )" crlf))
)

;@@@ Added by Prachi Rathore[24-1-14]
;The material for their lectures however was available and the University took steps to publish the lectures.[gyann-dhi] 
;हालाँकि इन भाषणों से संबंधित विषय-सामग्री उपलब्ध थी और विश्वविद्यालय ने भाषणों के प्रकाशन के लिए कदम उठाया।
(defrule however1
(declare (salience 5000))
(id-root ?id however)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(viSeRya-viSeRaka  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAlAzki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  however.clp 	however1   "  ?id "  hAlAzki )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore

(defrule however2
(declare (salience 4000))
(id-root ?id however)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waWApi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  however.clp 	however2   "  ?id "  waWApi )" crlf))
)
