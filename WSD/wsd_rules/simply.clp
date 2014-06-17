;##############################################################################
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
;########################################################################
;@@@ Added by jagriti(30.08.2013)
;She was simply dressed and wore no make-up. [iit-bombay wordnet]
;वह सादगी पूर्ण ढंग से कपडे पहनी थी और श्रृङ्गार नहीं किय़ा था . 
;They lived very simply.      		 [oxford advance learner]
;वे अत्यन्त सादगी पूर्ण ढंग से रहे. 
(defrule simply0
(declare (salience 5000))
(id-root ?id simply)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
(id-word ?id1 dressed|lived)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAxagI_pUrNa_DaMga_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  simply.clp 	simply0   "  ?id " sAxagI_pUrNa_DaMga_se)" crlf))
)

;@@@ Added by jagriti(30.08.2013)
;You look simply beautiful in that dress. [cambridge advance lear]
;आप उस पोशाक में वास्तव में सुंदर लग रही हो.
;The view is simply wonderful.         [oxford advance learner]
;दृश्य वास्तव में अद्भुत है.                  
;It is simply a matter of time.
;यह वास्तव में समय का मामला है . 

(defrule simply1
(declare (salience 4900))
(id-root ?id simply)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka ?id2 ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAswava_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  simply.clp 	simply1   "  ?id " vAswava_meM)" crlf))
)

;@@@ Added by jagriti(07.03.2014)
;I simply do my job for money.    [cambridge advance learner]
;मैं वास्तव में पैसे के लिए नौकरी करता हूँ.
(defrule simply2
(declare (salience 4800))
(id-root ?id simply)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAswava_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  simply.clp 	simply2  "  ?id " vAswava_meM)" crlf))
)

;....default rule......
;He explained it as simply as he could. [cambridge dictionary]
;उसने सरल ढंग  से समझाया जितना वह समझा सकता था.
(defrule simply3
(declare (salience 4700))
(id-root ?id simply)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarala_DaMga_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  simply.clp 	simply3  "  ?id " sarala_DaMga_se)" crlf))
)



