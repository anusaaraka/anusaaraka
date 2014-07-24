;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Sing(singh.jagriti5@gmail.com)
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
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;########################################################################
;Are you suggesting that I'm lazy? [oxford advance learner]
;क्या आप मुझे आलसी होने का संकेत कर रहे हैं?

(defrule suggest0
(declare (salience 5200))
(id-root ?id suggest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma ?id ?id3)
(subject-subject_samAnAXikaraNa  ?id2 ?id3)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkewa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  suggest.clp 	suggest0  "  ?id "saMkewa_kara)" crlf))
)
;@@@ Added by jagriti(6.2.2014)
;The symptoms suggest a minor heart attack.[oxford advancelearner]
;लक्षण एक मामूली दिल का दौरा पड़ने का संकेत देते हैं.
;All the evidence suggests that he stole the money.[oxford advanc]
;सभी प्रमाण संकेत करते हैं कि उसने पैसा चोरी किया . 
(defrule suggest1
(declare (salience 5000))
(id-root ?id suggest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkewa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  suggest.clp 	suggest1  "  ?id "saMkewa_kara)" crlf))
)
;....................Default Rule....................

; Suggest developing the features .   [Gyananidhi-Corpus Search]
;लक्षणों को विकसित करने के लिए सुझाव दीजिए .


(defrule suggest2
(declare (salience 0))
(id-root ?id suggest)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suJAva_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  suggest.clp 	suggest2  "  ?id "suJAva_xe)" crlf))
)


