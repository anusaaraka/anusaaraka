;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02@gmail.com)
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
;@@@   ---Added by Prachi Rathore
;The book is all about the trials of growing up.[cambridge]
;पुस्तक आगे बढने की मुसीबतों के बारे में है . 
(defrule trial0		
(declare (salience 4800))
(id-root ?id trial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 grow)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id musIbawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trial.clp 	trial0   "  ?id "  musIbawa )" crlf))
)

;@@@   ---Added by Prachi Rathore
;She was a real trial to her parents when she was younger.[cambridge]
;वह उसके माँ बाप के लिये सच में मुसीबत थी जब वह अधिक छोटी थी .  
(defrule trial1		
(declare (salience 4800))
(id-root ?id trial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?)
(viSeRya-to_saMbanXI  ?id ?id1)
(id-root ?id1 parent|family)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id musIbawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trial.clp 	trial1   "  ?id "  musIbawa )" crlf))
)

;@@@   ---Added by Prachi Rathore
;They're doing clinical trials on a new drug. [cambridge]
;वे एक नयी दवा पर रोग-विषयक परीक्षण कर रहे हैं . 
;We had the machine on trial for a week.[oald]
;हमाने एक सप्ताह के लिये परीक्षण पर मशीन ली . 
;a trial of strength.[oald]
;शक्ति का परीक्षण . 
(defrule trial2		
(declare (salience 4500))
(id-root ?id trial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-viSeRaNa  ?id ?)(viSeRya-on_saMbanXI  ? ?id)(viSeRya-of_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parIkRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trial.clp 	trial2   "  ?id "  parIKraNa )" crlf))
)

;@@@   ---Added by Prachi Rathore
;He's on trial for murder. [oald]
;वह खून के लिये मुकदमा पर है . 
;The men were arrested but not brought to trial. [oald]
;आदमी पकडे गये थे परन्तु मुकदमा तक नहीं पहुँचे थे .  
(defrule trial3		
(declare (salience 4800))
(id-root ?id trial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-on_saMbanXI  ?id1 ?id)(kriyA-to_saMbanXI  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukaxamA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trial.clp 	trial3   "  ?id "  mukaxamA )" crlf))
)

;@@@   ---Added by Prachi Rathore
;The system was introduced on a trial basis for one month.[oald]
;व्यवस्था एक महीने  के लिये एक प्रायोगिक आधार पर लागू की गयी थी .  
;A trial separation.[oald]
;प्रायोगिक पृथक्करण . 
(defrule trial4		
(declare (salience 4800))
(id-root ?id trial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-subject  ?id1 ?id)(samAsa_viSeRya-samAsa_viSeRaNa  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAyogika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trial.clp 	trial4   "  ?id "  prAyogika )" crlf))
)

;@@@   ---Added by Prachi Rathore
;The trials and tribulations of married life.[oald]
;विवाहित जीवन की मुसीबतें और क्लेश . . 
(defrule trial5		
(declare (salience 4800))
(id-root ?id trial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(conjunction-components  ? ?id ?)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id musIbawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trial.clp 	trial5   "  ?id "  musIbawa )" crlf))
)

;@@@   ---Added by Prachi Rathore
;Children learn to use computer programs by trial and error.[oald]
;बच्चे प्रयत्न और त्रुटि द्वारा सङ्गणक प्रोग्रामों का उपयोग करना सीखते हैं . 
(defrule trial6		
(declare (salience 4500))
(id-root ?id trial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(conjunction-components  ? ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayawna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trial.clp 	trial6   "  ?id "  prayawna )" crlf))
)

;@@@ Added by Prachi Rathore 2-1-14
;The trial was halted after the first week.
(defrule trial9		
(declare (salience 4800))
(id-root ?id trial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 halt)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAyoga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trial.clp 	trial9   "  ?id "  prAyoga)" crlf))
)
;xxxxxxxxxxxxxxxxxxxxxxxxxxx DEFAULT RULE xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;@@@   ---Added by Prachi Rathore
;a murder trial[oald]
;एक खून मुकदमा . 
(defrule trial7		
(id-root ?id trial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukaxamA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trial.clp 	trial7   "  ?id "  mukaxamA )" crlf))
)

;@@@   ---Added by Prachi Rathore
;We will trial the new drug in several hospitals.[cambridge]
;हम कई अस्पतालों में नयी दवा जाँच करेंगे . 
(defrule trial8		
(id-root ?id trial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAzca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trial.clp 	trial8   "  ?id "  jAzca_kara )" crlf))
)

