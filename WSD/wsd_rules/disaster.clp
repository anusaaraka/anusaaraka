;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
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
;@@@ Added by Pramila(BU) on 31-12-2013
;Letting her organize the party is a recipe for disaster.           ;oald
;उसको पार्टी का आयोजन करने देना विपत्ति के लिए एक निमन्त्रण है.
(defrule disaster0
(declare (salience 4800))
(id-root ?id disaster)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vipawwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disaster.clp 	disaster0   "  ?id " vipawwi )" crlf))
)

;@@@ Added by Pramila(BU) on 31-12-2013
;As a teacher, he's a disaster.          ;oald
;अध्यापक के रूप में , वह एक असफल व्यक्ति है.
(defrule disaster1
(declare (salience 4800))
(id-root ?id disaster)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-as_saMbanXI  ?id ?id1)
(subject-subject_samAnAXikaraNa  ?id2 ?id)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asaPala_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disaster.clp 	disaster1   "  ?id " asaPala_vyakwi )" crlf))
)

;@@@ Added by Pramila(BU) on 31-12-2013
;It would be a disaster for me if I lost my job.          ;cald
;यह मेरे लिए एक मुसीबत होगी यदि मैं अपनी नौकरी खो देता हूँ.
(defrule disaster2
(declare (salience 4800))
(id-root ?id disaster)
?mng <-(meaning_to_be_decided ?id)
(kriyA-samakAlika_kriyA  ?id ?id1)
(kriyA-object  ?id1 ?id2)
(id-word ?id2 job)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id musIbawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disaster.clp 	disaster2   "  ?id " musIbawa )" crlf))
)

;@@@ Added by Pramila(BU) on 31-12-2013
;Disaster struck when the wheel came off.         ;oald
;जब पहिया निकल गया तो दुर्घटना हुई.
;Everything was going smoothly until suddenly disaster struck.          ;cald
;अचानक दुर्घटना होने तक सब सही चल रहा था. 
(defrule disaster3
(declare (salience 4800))
(id-root ?id disaster)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id1 ?id)
(id-word ?id1 struck)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurGatanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disaster.clp 	disaster3   "  ?id " xurGatanA )" crlf))
)

;@@@ Added by Pramila(BU) on 21-02-2014
;An inquiry was ordered into the recent rail disaster.    ;cald
;हाल ही में हुई रेल दुर्घटना की जाँच करने का आदेश दिया गया.
(defrule disaster4
(declare (salience 4800))
(id-root ?id disaster)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurGatanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disaster.clp 	disaster4   "  ?id " xurGatanA )" crlf))
)

;@@@ Added by Pramila(BU) on 31-12-2013
;The play's first night was a total disaster.      ;oald
;नाटक की पहली रात पूरी तरह से एक असफल प्रयास था.
;conditions '(id-word ?id2 total|complete)' and '(viSeRya-viSeRaNa  ?id ?id2)' are removed] on 21-02-2014
(defrule disaster5
(declare (salience 4800))
(id-root ?id disaster)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asaPala_prayAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disaster.clp 	disaster5   "  ?id " asaPala_prayAsa )" crlf))
)

;@@@ Added by Pramila(BU) on 21-02-2014
;The excursion trip was a real disaster.      ;hinkhoz
;पर्यटन यात्रा एक पूर्णतः असफल थी .
(defrule disaster6
(declare (salience 4800))
(id-root ?id disaster)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 trip|journey)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asaPala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disaster.clp 	disaster6   "  ?id " asaPala )" crlf))
)

;@@@ Added by Pramila(BU) on 31-12-2013
;The discovery of the disease among sheep spells financial disaster for farmers.          ;oald
;भेड़ों में बीमारी का मिलना किसानों के लिए वित्तीय संकट का संकेत देती है..
(defrule disaster7
(declare (salience 4800))
(id-root ?id disaster)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 financial)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disaster.clp 	disaster7   "  ?id " saMkata )" crlf))
)

;@@@ Added by Pramila(BU) on 31-12-2013
;His office was a disaster area with papers piled everywhere.          ;oald
;उसका कार्यालय हर जगह कागजात के ढर से अव्यवस्थित स्थान था.
;modified by Pramila(BU) on 21-02-2014 [condition '(viSeRya-after_saMbanXI  ?id1 ?id2)'added]
;After the party, the house was a complete disaster area.    ;cald
;पार्टी के बाद , घर पूर्णतया एक अव्यवस्थित स्थान था.
(defrule disaster8
(declare (salience 4800))
(id-root ?id disaster)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)
(id-root ?id1 area)
(or(viSeRya-with_saMbanXI  ?id1 ?id2)(viSeRya-after_saMbanXI  ?id1 ?id2))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 avyavasWiwa_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " disaster.clp	disaster8  "  ?id "  " ?id1 "  avyavasWiwa_sWAna  )" crlf))
)

;@@@ Added by Pramila(BU) on 31-12-2013
;Housing is another disaster area for the government.       ;oald
;हाउसिंग सरकार के लिए एक और आपदापूर्ण क्षेत्र है.         
(defrule disaster9
(declare (salience 4800))
(id-root ?id disaster)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)
(id-root ?id1 area)
(viSeRya-for_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ApaxApUrNa_kRewra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " disaster.clp	disaster9  "  ?id "  " ?id1 "  ApaxApUrNa_kRewra  )" crlf))
)

;------------------------------------- Default Rules ------------------------------------------
;@@@ Added by Pramila(BU) on 31-12-2013
;A natural disaster.          ;oald
;एक प्राकृतिक तबाही
(defrule disaster10
(declare (salience 4000))
(id-root ?id disaster)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wabAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disaster.clp         disaster10   "  ?id " wabAhI )" crlf))
)



;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_disaster7
(declare (salience 4800))
(id-root ?id disaster)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 financial)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " disaster.clp   sub_samA_disaster7   "   ?id " saMkata )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_disaster7
(declare (salience 4800))
(id-root ?id disaster)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 financial)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " disaster.clp   obj_samA_disaster7   "   ?id " saMkata )" crlf))
)
