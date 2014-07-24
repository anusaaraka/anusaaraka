;##############################################################################
;#  Copyright (C) 2013-2014 Sonam Gupta(sonam27virgo@gmail.com)
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


;Added by Sonam Gupta MTech IT Banasthali 2013
;Do you still practise your religion? [OALD]
;क्या आप अभी भी अपने धर्म का पालन करते हैं? 
(defrule practise0
(declare (salience 5000))
(id-root ?id practise)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 religion)
(id-cat_coarse ?id verb)
(or(and(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?)(kriyA-kriyA_viSeRaNa  ?id ?))(and(kriyA-object  ?id ?id1)(to-infinitive  ? ?id)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAlana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  practise.clp 	practise0   "  ?id "  pAlana_kara )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;To practise medicine. [OALD]
;चिकित्सकीय पेशा . 
(defrule practise1
(declare (salience 4900))
(id-root ?id practise)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 medicine)
(id-cat_coarse ?id verb)
(or(and(kriyA-object  ?id ?id1)(to-infinitive  ? ?id))(and(kriyA-object  ?id ?id1)(kriyA-from_saMbanXI  ? ?id)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cikiwsakIya_peSA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  practise.clp 	practise1   "  ?id "  cikiwsakIya_peSA )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;She practised as a barrister for many years. [OALD]
;उसने बहुत सारे वर्षों तक वकालत किया . 
(defrule practise2
(declare (salience 4800))
(id-word ?id practised)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 law|barrister)
(id-cat_coarse ?id verb)
(and(kriyA-subject  ?id ?)(kriyA-as_saMbanXI  ?id ?id1)(kriyA-for_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vakAlawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  practise.clp 	practise2   "  ?id "  vakAlawa_kara )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;To practise law. [OALD]
;वकालत का पेशा . 
(defrule practise3
(declare (salience 4700))
(id-root ?id practise)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 law|barrister)
(id-cat_coarse ?id verb)
(or(and(kriyA-object  ?id ?id1)(to-infinitive  ? ?id))(and(kriyA-subject  ?id ?)(kriyA-as_saMbanXI  ?id ?id1)(kriyA-for_saMbanXI  ?id ?)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vakAlawa_kA_peSA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  practise.clp 	practise3   "  ?id "  vakAlawa_kA_peSA )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;It is believed that in the olden days meditation and austerities were practised here. [Gyannidhi]
;यह माना हुआ है कि प्राचीन दिनों में साधना और कठोर नियम यहाँ किये गये थे . 
(defrule practise4
(declare (salience 4600))
(id-root ?id practise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-aXikaraNavAcI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kiye_gaye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  practise.clp 	practise4   "  ?id "  kiye_gaye )" crlf))
)

;############################################################Default Rule####################################################################
;Added by Sonam Gupta MTech IT Banasthali 2013
;They're practising for tomorrow's concert. [Cambridge]
;वे कल की सङ्गीत गोष्ठी के लिए अभ्यास रहे हैं . 
(defrule practise5
(id-root ?id practise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aByAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  practise.clp 	practise5   "  ?id "  aByAsa )" crlf))
)
