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


;@@@ Added by Pramila(BU) on 03-02-2014
;There was protracted debate in the Senate over the recommendations of the Committee, ASUTOSH AND THEQUOTECALCUTTA UNIVERSITY but the 
;sheer driving forces of Sir Asutosh won the - acceptance of the Senate, which also framed regulations with a view to carry them 
;into execution.     ;gyannidhi
;समिति की सिफारिशों पर सिनेट में लम्बी बहस हुई परंतु सर आशुतोष की प्रेरित करने की शक्ति ने ही सिनेट की स्वीकृति हासिल की जिसने इसे प्रभाव में लाने के लिए नियम भी बनाये।
(defrule execution0
(declare (salience 4950))
(id-root ?id execution)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-into_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  execution.clp 	execution0   "  ?id "  praBAva )" crlf)
)
)

;@@@ Added by Pramila(BU) on 03-02-2014
;Sometimes in the execution of their duty the police have to use firearms.   ;cald
;कभी कभी अपने ड्यूटी के कार्यान्वयन में पुलिस ने आग्नेयास्त्रों का प्रयोग किया है.
;He had failed in the execution of his duty.        ;oald
;वह अपनी ड्यूटी के कार्यान्वयन में असफल हो गया.
(defrule execution1
(declare (salience 4950))
(id-root ?id execution)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
(viSeRya-of_saMbanXI  ?id ?id2)
(id-root ?id2 duty)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAryAnvayana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  execution.clp 	execution1   "  ?id "  kAryAnvayana )" crlf)
)
)

;@@@ Added by Pramila(BU) on 03-02-2014
;He faced execution by hanging for murder.   ;oald
;उसे हत्या के लिए फांसी देकर मृत्युदण्ड की सजा का सामना करना पड़ा.
(defrule execution2
(declare (salience 4950))
(id-root ?id execution)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?kri ?id)
(kriyA-by_saMbanXI  ?kri ?id1)
(kriyA-for_saMbanXI  ?id1 ?id2)
(id-root ?id2 murder)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mqwyuxaNda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  execution.clp 	execution2   "  ?id "  mqwyuxaNda )" crlf)
)
)

;@@@ Added by Pramila(BU) on 03-02-2014
;Execution is still the penalty in some states for murder.        ;cald
;मृत्युदण्ड अभी भी कुछ राज्यों में हत्या के लिए सजा है.
(defrule execution3
(declare (salience 4950))
(id-root ?id execution)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id ?id1)
(viSeRya-in_saMbanXI  ?id1 ?id2)
(viSeRya-for_saMbanXI  ?id2 ?id3)
(id-root ?id3 murder)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mqwyuxaNda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  execution.clp 	execution3   "  ?id "  mqwyuxaNda )" crlf)
)
)

;@@@ Added by Pramila(BU) on 03-02-2014
;Over 200 executions were carried out last year.   ;oald
;200 से ज्यादा मृत्युदण्ड पिछले साल दिए गए.
(defrule execution4
(declare (salience 4950))
(id-root ?id execution)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-karma  ?kri ?id)
(kriyA-over_saMbanXI  ?kri ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mqwyuxaNda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  execution.clp 	execution4   "  ?id "  mqwyuxaNda )" crlf)
)
)

;@@@ Added by Pramila(BU) on 03-02-2014
;Her execution of the piano was perfect.   ;oald
;उसका पियानो बजाना उत्तम था.
(defrule execution5
(declare (salience 4900))
(id-root ?id execution)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 piano)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_word_mng ?id (+ ?id 1) bajAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_word_mng   " ?*wsd_dir* " execution.clp	execution5  "  ?id "  " (+ ?id 1) "  bajAnA  )" crlf))
)

;@@@ Added by Pramila(BU) on 03-02-2014
;The executions will be carried out by a firing squad.   ;cald
;मृत्युदण्ड फायरिंग दस्ते के द्वारा दी जाएगी.
(defrule execution6
(declare (salience 4950))
(id-root ?id execution)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?id1 ?id)
(kriyA-by_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mqwyuxaNda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  execution.clp 	execution6   "  ?id "  mqwyuxaNda )" crlf)
)
)
;-----------------------default rules--------------------------------

;@@@ Added by Pramila(BU) on 03-02-2014
;The idea was good, but the execution was poor.   ;oald
;विचार अच्छा था, परन्तु प्रभाव खराब था . 
(defrule execution7
(declare (salience 4000))
(id-root ?id execution)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  execution.clp 	execution7   "  ?id "  praBAva )" crlf)
)
)

;@@@ Added by Pramila(BU) on 03-02-2014
(defrule execution8
(declare (salience 0))
(id-root ?id execution)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  execution.clp 	execution8   "  ?id "  praBAva )" crlf)
)
)
