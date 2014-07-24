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
;@@@ Added by Prachi Rathore[1-3-14]
;We need tighter security at the airport.
;हमें विमानपत्तन में  कडी सुरक्षा की जरूरत होती है . 
(defrule tight0
(declare (salience 5000))
(id-root ?id tight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 security|control)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tight.clp 	tight0   "  ?id "  kadA )" crlf))
)


;@@@ Added by Prachi Rathore[1-3-14]
;He's very tight with his money.
;वह  अत्यंत कंजुस है . 
(defrule tight1
(declare (salience 5000))
(id-root ?id tight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-with_saMbanXI ?id ?id1)
(id-root ?id1 money)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMjusa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tight.clp 	tight1   "  ?id "  kaMjusa )" crlf))
)


;@@@ Added by Prachi Rathore[1-3-14]
;They're raising three kids on one small salary so money is very tight.
; वे एक छोटे वेतन पर तीन बच्चों को बडा कर रहे है इसलिए पैसों की किल्लत है . 
(defrule tight5
(declare (salience 5000))
(id-root ?id tight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 money)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id killawa))
(assert (id-H_vib_mng ?id1 kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tight.clp 	tight5   "  ?id "  killawa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "   tight.clp 	tight5 "  ?id " kA )" crlf))
)


;@@@ Added by Prachi Rathore[1-3-14]
;The plane flew around in a tight circle.[oald]
;विमान एक छोटे वृत्त में उडा . 
(defrule tight6
(declare (salience 5000))
(id-root ?id tight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 circle)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tight.clp 	tight6   "  ?id "  CotA )" crlf))
)

;@@@ Added by Prachi Rathore[1-3-14]
;The driver slowed down at a tight bend in the road.[oald]
;चालक ने सडक पर एक यकायक घुमाव पर गति धीमी की . 
(defrule tight7
(declare (salience 5000))
(id-root ?id tight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 bend)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yakAyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tight.clp 	tight7   "  ?id "  yakAyaka )" crlf))
)

;@@@ Added by Prachi Rathore[11-3-14]
;Make all the screws tight.[rajpal]
;सभी पेंच कस दीजिए .
(defrule tight8
(declare (salience 4000))
(id-root ?id tight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 screw)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tight.clp 	tight8   "  ?id "  kasa )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[1-3-14]
;These shoes are much too tight. [oald]
;ये जूते बहुत ज्यादा ही तंग हैं . 
(defrule tight2
(declare (salience 400))
(id-root ?id tight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tight.clp 	tight2   "  ?id "  waMga )" crlf))
)


;@@@ Added by Prachi Rathore[1-3-14]
;Hold on tight. [m-w]
;कसकर पकडिये
(defrule tight3
(declare (salience 400))
(id-root ?id tight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kasakara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tight.clp 	tight3   "  ?id "  kasakara )" crlf))
)


;@@@ Added by Prachi Rathore[1-3-14]
;These shoes are much too tight. [oald]
;ये जूते बहुत ज्यादा ही तंग हैं . 
(defrule tight4
(declare (salience 200))
(id-root ?id tight)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tight.clp 	tight4   "  ?id "  waMga )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_tight0
(declare (salience 5000))
(id-root ?id tight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 security|control)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tight.clp   sub_samA_tight0   "   ?id " kadA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_tight0
(declare (salience 5000))
(id-root ?id tight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 security|control)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tight.clp   obj_samA_tight0   "   ?id " kadA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_tight6
(declare (salience 5000))
(id-root ?id tight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 circle)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tight.clp   sub_samA_tight6   "   ?id " CotA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_tight6
(declare (salience 5000))
(id-root ?id tight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 circle)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tight.clp   obj_samA_tight6   "   ?id " CotA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_tight7
(declare (salience 5000))
(id-root ?id tight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 bend)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yakAyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tight.clp   sub_samA_tight7   "   ?id " yakAyaka )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_tight7
(declare (salience 5000))
(id-root ?id tight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 bend)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yakAyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tight.clp   obj_samA_tight7   "   ?id " yakAyaka )" crlf))
)
