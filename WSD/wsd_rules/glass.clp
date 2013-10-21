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
 
;Have a glass of wine.              [oxforddictionaries]
;वाइन का एक गिलास लीजिये .
;Place a pencil in a glass half filled with water .  [Gyananidhi-Corpus]
;एक पेंसिल को आधे भरे पानी के गिलास में रखें 
(defrule glass0
(declare (salience 4700))
(id-root ?id glass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI ?id ?id1)(viSeRya-in_saMbanXI ?id1 ?id)(viSeRya-in_saMbanXI ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gilAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glass.clp 	glass0   "  ?id "  gilAsa )" crlf))
)

;A beer glass.        [oxforddictionaries]
;एक बियर का गिलास.
(defrule glass1
(declare (salience 4700))
(id-root ?id glass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(samAsa ?id1 ?id)(viSeRya-viSeRaNa ?id ?id1)(viSeRya-viSeRaNa ?id1 ?id))
(id-root ?id1 drink|full|half|plastic|steel|brass|metal|coke|wine|water|milk|tea|coffee|beer)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gilAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glass.clp 	glass1   "  ?id "  gilAsa )" crlf))
)

;But if you flick the card with your forefinger then the box will go straight into the glass .  [Gyananidhi-Corpus]
;परंतु कार्ड को झटके के साथ , उंगली से मारने पर , डिब्बा सीधा गिलास के अंदर चला जाएगा | 
(defrule glass2
(declare (salience 4700))
(id-root ?id glass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-into_saMbanXI ?id1 ?id)
(id-root ?id1 drop|put|pour|mix|go|look|glare)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gilAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glass.clp 	glass2  "  ?id "  gilAsa )" crlf)))

;Can you remove a table-tennis ball from a glass with out physically touching it ?   [Gyananidhi-Corpus]
;क्या आप एक टेबिल-टेनिस की गेंद को बिना छुए ही गिलास के बाहर निकाल सकते हैं ?
(defrule glass3
(declare (salience 4700))
(id-root ?id glass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-from_saMbanXI ?id1 ?id)
(id-root ?id1 drink|taste|sip|fall|down|slope|gulp|remove)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gilAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glass.clp 	glass3   "  ?id "  gilAsa )" crlf))
)

;In cool climates you have to grow tropical plants under glass.   [cambridge]
;ठंडी जलवायु मे अापको उष्णकटिबन्धीय पौधे पौध घर में उगाने चाहिये.
;The vegetables are grown under glass.    [OALD]
;सब्जियां पौध घर में उगती है.
(defrule glass4
(declare (salience 4700))
(id-root ?id glass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-under_saMbanXI ?id1 ?id)
(id-root ?id1 grow)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pOXa_Gara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glass.clp 	glass4   "  ?id "  pOXa_Gara )" crlf))
)

;I wear glasses for driving.   [OALD]
;मैं गाडी चलाने के लिये चश्मा पहनता हूँ
(defrule glass5
(declare (salience 4700))
(id-root ?id glass)
(id-word ?id glasses)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object ?id1 ?id)
(id-root ?id1 wear)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caSmA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glass.clp 	glass5   "  ?id "  caSmA )" crlf))
)


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;---------Default-Rule---------------
;The positively charged glass rod does not lose any of its charge, contrary to the process of charging by contact.[physics]
;धनावेशित काँच की छड के आवेश की कोई क्षति नहीं होती , जो सम्पर्क द्वारा आवेशित करने की प्रक्रिया के विपरीत है .
(defrule glass6
(declare (salience 4100))
(id-root ?id glass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glass.clp 	glass6   "  ?id "  kAzca )" crlf))
)

(defrule glass7
(declare (salience 4100))
(id-root ?id glass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SISe_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glass.clp 	glass7   "  ?id "  SISe_kA )" crlf))
)

;The inn has a long gallery, now glassed in.    [oxforddictionaries]
;धर्मशाला मे एक लम्बा गलियारा है, जिसमे अब शीशे लग गये है.
(defrule glass8
(declare (salience 4100))
(id-root ?id glass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SISA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glass.clp 	glass8   "  ?id "  SISA_lagA )" crlf))
)

(defrule glass9
(declare (salience 4000))
(id-root ?id glass)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glass.clp 	glass9   "  ?id "  kAzca )" crlf))
)
