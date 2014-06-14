;########################################################################
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
;########################################################################`

;@@@  Added by jagriti(31.12.2013)
;She scored 120 in the history test. 
;उसने इतिहास की परीक्षा में 120 अंक प्राप्त किए.
(defrule score0
(declare (salience 5000))
(id-root ?id score)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-cat_coarse ?id1 number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMka_prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  score.clp 	score0   "  ?id "  aMka_prApwa_kara )" crlf))
)
;@@@ Added by jagriti(31.12.2013)
;He scored with her last night.
;उसने उसके साथ कल रात को संभोग किया था. 
(defrule score1
(declare (salience 4900))
(id-root ?id score)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI ?id ?id1)
(id-root ?id1 night)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMBoga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  score.clp 	score1   "  ?id "  saMBoga_kara )" crlf))
)
;@@@ Added by jagriti(14.2.2014) 
;He made a score on the table.[rajpal]
;उसने मेज पर खरोंच लगा दी . 
(defrule score2
(declare (salience 4800))
(id-root ?id score)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object ?id1 ?id)
(kriyA-on_saMbanXI  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaroMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  score.clp 	score2   "  ?id "  KaroMca )" crlf))
)
;@@@ Added by jagriti(14.2.2014) 
;To pay one's score.[rajpal]
;हिसाब देना . 
(defrule score3
(declare (salience 4700))
(id-root ?id score)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object ?id1 ?id)
(id-root ?id1 pay)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hisAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  score.clp 	score3   "  ?id "  hisAba )" crlf))
)
;@@@ Added by jagriti(14.2.2014) 
;He made a good score.[rajpal]
;उसने अच्छे अंक प्राप्त किए . 
(defrule score4
(declare (salience 4600))
(id-root ?id score)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object ?id1 ?id)
(id-root ?id1 make|get|keep)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  score.clp 	score4   "  ?id "  aMka )" crlf))
)
;@@@ Added by jagriti(14.2.2014) 
;The student scored the desk with his knife.[rajpal]
;विद्यार्थी ने अपने चाकू से डेस्क खरोंचा . 
(defrule score5
(declare (salience 4700))
(id-root ?id score)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-on_saMbanXI  ?id ?)(kriyA-with_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaroMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  score.clp 	score5   "  ?id "  KaroMca )" crlf))
)
;@@@ Added by jagriti(14.2.2014)
;He was scored by the public for his evil remarks.[rajpal]
;उसे उसकी दुष्ट टिप्पणियों के लिये जनता द्वारा बुरा-भला कहा गया था .
(defrule score6
(declare (salience 4600))
(id-root ?id score)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burA-BalA_kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  score.clp 	score6   "  ?id "  burA-BalA_kaha )" crlf))
)
;.......Default rule........
;@@@ Added by jagriti(31.12.2013)
;The movie scored an instant success. 
;फिल्म ने तात्कालिक सफलता प्राप्त की.
(defrule score7
(declare (salience 1))
(id-root ?id score)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  score.clp 	score7   "  ?id "  prApwa_kara )" crlf))
)
;@@@ Added by jagriti(14.2.2014)
;The score of India was 250 runs.[rajpal]
;इंडिया का स्कोर 250 रन था . 
(defrule score8
(declare (salience 1))
(id-root ?id score)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id skora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  score.clp 	score8   "  ?id "  skora )" crlf))
)

