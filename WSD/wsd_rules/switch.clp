;#############################################################################
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
;######################################################################
;@@@ Added by jagriti(11.3.2014)
;Please switch off the light.[rajpal]
;कृपया बत्ती बंद कर दें.
(defrule switch2
(declare (salience 5000))
(id-root ?id switch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 off)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " switch.clp	switch2  "  ?id "  " ?id1 "  baMxa_kara  )" crlf))
)
;@@@ Added by jagriti(11.3.2014)
;Please switch on the light.[rajpal]
;कृपया बत्ती खोल दीजिए.
(defrule switch3
(declare (salience 4900))
(id-root ?id switch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root =(+ ?id 1) on)
(kriyA-on_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " switch.clp	switch3  "  ?id "  " (+ ?id 1) "  Kola  )" crlf))
)
;@@@ Added by jagriti(11.3.2014)
;The teacher asked the monitor to switch every student.[rajpal]
;शिक्षक ने कक्षानायक से प्रत्येक विद्यार्थी को बेंत लगाने के लिये कहा . 
(defrule switch5
(declare (salience 4800))
(id-root ?id switch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id beMwa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  switch.clp 	switch5  "  ?id "  beMwa_lagA)" crlf))
) 
;@@@ Added by jagriti(11.3.2014)
;She switched her hand away.[rajpal]
;उसने अपना हाथ झटके से हटा लिया . 
(defrule switch6
(declare (salience 4700))
(id-root ?id switch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa ?id ?id1)
(id-root ?id1 away)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Jatake_se_hatA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " switch.clp	switch6  "  ?id "  " ?id1 "  Jatake_se_hatA_le )" crlf))
)
;@@@ Added by jagriti(11.3.2014)
;She made the switch from full-time to part-time work when her first child was born.[oald]
;उसने  अंशकालिक से पूर्णकालिक काम करने में बदलाव किया जब उसका प्हला बच्चा पैदा हुआ था . 
(defrule switch7
(declare (salience 4600))
(id-root ?id switch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object ?id1 ?id)
(kriyA-from_saMbanXI ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxalAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  switch.clp 	switch7  "  ?id "  baxalAva)" crlf))
) 
;......Default Rule....
;@@@ Added by jagriti(11.3.2014)
;The switch should be down.[rajpal]
;स्विच को नीचे होना चाहिए .
(defrule switch0
(declare (salience 100))
(id-root ?id switch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svica))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  switch.clp 	switch0  "  ?id "  svica)" crlf))
) 
;@@@ Added by jagriti(11.3.2014)
;When did you switch jobs?[oald]
;आपने कब काम बदल दिया? 
(defrule switch1
(declare (salience 100))
(id-root ?id switch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxala_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  switch.clp 	switch1  "  ?id "  baxala_xe)" crlf))
) 
