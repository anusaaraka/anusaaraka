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
;@@@ Added by Pramila(Banasthali university) on 02-01-2014
;He dashed his head against the wall.             ;shiksharthi
;उसने अपना सिर दीवार पर पटक दिया.
(defrule dash0
(declare (salience 4900))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(kriyA-object  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pataka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dash.clp 	dash0   "  ?id " pataka_xe )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 02-01-2014
;The glass dashed to pieces against the floor.        ;shiksharthi        
;गिलास फर्श पर गिरकर टुकड़े-टुकड़े हो गया.
(defrule dash1
(declare (salience 4900))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-root ?id1 piece)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tukadZe-tukadZe_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dash.clp	dash1  "  ?id "  " ?id1 "  tukadZe-tukadZe_ho_jA  )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 02-01-2014
;I must dash to catch the bus.           ;shiksharthi
;मुझे बस पकड़ने के लिए लपककर पहुँचना चाहिए.
(defrule dash2
(declare (salience 4900))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-root ?id1 catch)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lapakakara_pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dash.clp 	dash2   "  ?id " lapakakara_pahuzca )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 02-01-2014
;She dashed the letter off in five minutes.           ;cald
;उसने पाँच मिनट में पत्र लिखा.
;I dashed off a note to my brother.     ;oald
;मैंने अपने भाई को एक नोट लिखा.
(defrule dash3
(declare (salience 4900))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 off)
(kriyA-object  ?id ?id2)
(id-root ?id2 letter|note)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dash.clp	dash3  "  ?id "  " ?id1 "  liKa  )" crlf))
)
;@@@ Added by Pramila(Banasthali university) on 02-01-2014
;They have been dashing all the day.      ;shiksharthi
;वे पूरे दिन भाग-दौड़ करते रहे हैं.
;I've been dashing around all day.        ;cald
;मैं लगभग पूरे दिन भाग-दौड़ करता रहा हूँ.
(defrule dash4
(declare (salience 4900))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-kAlavAcI  ?id ?id1)(kriyA-around_saMbanXI  ?id ?id1))
(viSeRya-det_viSeRaNa  ?id1 ?id2)
(id-root ?id2 all|whole)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga_xOdZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dash.clp 	dash4   "  ?id " BAga_xOdZa_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 02-01-2014
;She dashed into the shop.      ;cfilt.iitb.ac.in
;वह दुकान में तेजी से घुसी.
(defrule dash5
(declare (salience 4500))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejI_se_Gusa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dash.clp 	dash5   "  ?id " wejI_se_Gusa )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 02-01-2014
;She dashed forward               ;shiksharthi
;वह आगे की ओर लपकी.
(defrule dash6
(declare (salience 4900))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-word ?id1 forward)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lapaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dash.clp 	dash6   "  ?id " lapaka )" crlf))
)


;@@@ Added by Pramila(Banasthali university) on 02-01-2014
;He left for home with a dash.        ;shiksharthi
;वह झपट के साथ घर के लिए चल पड़ा.
(defrule dash7
(declare (salience 4900))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id1 ?id)
(kriyA-for_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Japata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dash.clp 	dash7   "  ?id " Japata )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 02-01-2014
;Dash is longer than a hyphen.          ;shiksharthi
;योजक हाईफन से लम्बा होता है.
(defrule dash8
(declare (salience 4900))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id ?id1)
(viSeRya-viSeRaka  ?id1 ?id2)
(kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka  ?id2 ?id3)
(id-root-category-suffix-number ?id3 ? adverb er -)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yojaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dash.clp 	dash8   "  ?id " yojaka )" crlf))
)


;@@@ Added by Pramila(Banasthali university) on 02-01-2014
;I made a dash for the bathroom.   ;cald
;मैंनें स्नानघर के लिए तेज दौड़ लगाई. 
;As soon as the rain dies down I'm going to make a dash for it.     ;cald
;जैसे-जैसे बारिश कम होती जा रही थी मैं तेज दौड़ लगाता जा रहा था.
(defrule dash10
(declare (salience 4900))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(or(kriyA-for_saMbanXI  ?id1 ?id2)(viSeRya-for_saMbanXI  ?id ?id2))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja_xOdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dash.clp 	dash10   "  ?id " weja_xOdZa )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 02-01-2014
;Who won the 100-yard dash?
;100 गज की दौड़ किसने जीती.
(defrule dash11
(declare (salience 4900))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(kriyA-object  ?id2 ?id)
(id-root ?id2 win|lose)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xOdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dash.clp 	dash11   "  ?id " xOdZa )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 02-01-2014
;A scarf adds a dash of sophistication.       ;cald
;The rug adds a dash of colour to the room.         ;oald
;Add a dash of lemon juice.      ;oald
;(defrule dash12
;(declare (salience 4900))
;(id-root ?id dash)
;?mng <-(meaning_to_be_decided ?id)
;(viSeRya-of_saMbanXI  ?id ?id1)
;(id-cat_coarse ?id noun)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id miSraNa))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dash.clp 	dash12   "  ?id " miSraNa )" crlf))
;)

;@@@ Added by Pramila(Banasthali university) on 02-01-2014
;I must dash - I've got to be home by seven.       ;cald
;मुझे तेजी से चलना चाहिए - मुझे सात बजे तक घर पहुँचना है.
;I must dash, I'm late.     ;oald
;मुझे तेजी से चलना चाहिए ,मैं लेट हूँ.
(defrule dash13
(declare (salience 4900))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ?id1 ?id)
(id-root ?id1 get|late|catch)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejI_se_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dash.clp 	dash13   "  ?id " wejI_se_cala )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 02-01-2014
;He dashed along the platform and jumped on the train.   ;oald
;वह प्लेटफॉर्म के साथ-साथ दौड़ी और ट्रेन पर छलांग लगाई.
(defrule dash14
(declare (salience 5000))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 along)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xOdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dash.clp 	dash14   "  ?id " xOdZa )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 02-01-2014
;She dashed off to keep an appointment.   ;oald
;वह नियोजित भेंट के समय-पालन के लिए तेज भागी.
(defrule dash15
(declare (salience 5000))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 off)
(kriyA-kriyArWa_kriyA  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 weja_BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dash.clp	dash15  "  ?id "  " ?id1 "  weja_BAga  )" crlf))
)
;--------------------------default rules------------------------------------------------------------------------
;@@@ Added by Pramila(Banasthali university) on 02-01-2014
;He brought youthful energy, dash and charisma to the department.      ;oald
;वह विभाग में युवा ऊर्जा,जोश और प्रतिभा लाया.
(defrule dash16
(declare (salience 4000))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dash.clp 	dash16   "  ?id " joSa )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 02-01-2014
;The waves are dashing against the rock.               ;shiksharthi
;लहरें चट्टान से टकरा रही हैं.
;He dashed against the wall.               ;shiksharthi
;वह दीवार से टकराया.
(defrule dash17
(declare (salience 4000))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id takarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dash.clp 	dash17   "  ?id " takarA )" crlf))
)
