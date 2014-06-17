;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
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

;@@@ Added by Pramila(BU) on 25-01-2014
;To encourage the spirit of research, the regulations for the award of the Prem Chand Roy Chand Studentship were revised.
;शोध की भावना को प्रोत्साहित करने के लिए प्रेमचंद राय चंद छात्रवृत्ति प्रदान करने के नियमों में परिवर्तन किया गया।
(defrule encourage0
(declare (salience 5000))
(id-root ?id encourage)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prowsAhiwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encourage.clp 	encourage0   "  ?id " prowsAhiwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  encourage.clp      encourage0   "  ?id " ko )" crlf))
)



;@@@ Added by Pramila(BU)
;The intention is to encourage new writing talent.          ;OLD
;लक्ष्य नई लेखन प्रतिभा को बढ़ावा देना है.
;He claims the new regulations will encourage investment.              ;m-w
;उन्होंने कहा कि नए नियमों के निवेश को बढ़ावा देंगे .
(defrule encourage1
(declare (salience 4900))
(id-root ?id encourage)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZAvA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encourage.clp 	encourage1   "  ?id " baDZAvA_xe )" crlf))
)

;@@@ Added by Pramila(BU)
;Warm weather encourages plant growth.           ;m-w
;गर्म मौसम पौधों के विकास को बढ़ाता है.
(defrule encourage2
(declare (salience 5000))
(id-root ?id encourage)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id2)
(id-root ?id2 plant|tree)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encourage.clp 	encourage2   "  ?id " baDZA )" crlf))
)

;@@@ Added by Pramila(BU)
;She felt encouraged by their promise of support.            ;cald
;उसने उनके सहारे के वादे से प्रोत्साहित हुई महसूस किया.
;We were greatly encouraged by the positive response of the public.                    ;oald
;हम जनता के सकारात्मक उत्तर के द्वारा अत्यन्त प्रोत्साहित हुए
(defrule encourage3
(declare (salience 5000))
(id-root ?id encourage)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prowsAhiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encourage.clp 	encourage3   "  ?id " prowsAhiwa_ho )" crlf))
)

;@@@ Added by Pramila(BU)  on 01-02-2014
;Encouraged by these words, Asutosh approached the Government with the request for the foundation of two University Professorship, one, to 
;be called the Regular Professorship, in commemoration of the visit of the King, for Indian History and Antiquities, and the other, 
;a Professorship of Higher Mathematics to be associated with the name of Lord Hardinge.      ;gyannidhi
;इन शब्दों से प्रोत्साहित होकर आशुतोष इस-अनुरोध के साथ सरकार पर पहुंचे कि विश्वविद्यालय में दो प्रोफेसर-पदों की सथापना की जाये जिनमें से एक को, जो भारतीय इतिहास और पुरातत्व से 
;सबन्धित होगी, राजा की यात्रा की समृति में रेजियस प्रोफसरशिप कहा जाये और दूसरी, उच्चतर गणित में प्रफेसरशिप हो जो लार्ड हार्डिंग के नाम के साथ जोङी जाय।
(defrule encourage4
(declare (salience 5000))
(id-word ?id encouraged)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-kqxanwa_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uwsAhiwa_hokara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encourage.clp 	encourage4   "  ?id " prowsAhiwa_ho )" crlf))
)
;---------------------------default rules-------------------------------------------------------
;@@@ Added by Pramila(BU)
;They've always encouraged me in everything I've wanted to do.    ;cald
;उन्होंने मुझे हमेशा जो मैं करना चाहता था सब में  प्रोत्साहित किया है.
;My parents have always encouraged me in my choice of career.             ;oald
;मेरे माता पिता ने हमेशा कैरियर के मेरे चयन में मुझे प्रोत्साहित किया है.
;Music and lighting are used to encourage shoppers to buy more.            ;oald
;संगीत और प्रकाश दुकानदारों को अधिक खरीदने के लिए प्रोत्साहित करती है. 
(defrule encourage5
(declare (salience 3000))
(id-root ?id encourage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prowsAhiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encourage.clp 	encourage5   "  ?id " prowsAhiwa_kara )" crlf))
)

;@@@ Added by Pramila(BU)
(defrule encourage6
(declare (salience 0))
(id-root ?id encourage)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwsAhiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encourage.clp 	encourage6   "  ?id " uwsAhiwa_kara )" crlf))
)

;They've always encouraged me in everything I've wanted to do.    ;cald
;उन्होंने मुझे हमेशा जो मैं करना चाहता था सब में  प्रोत्साहित किया है.
;My parents have always encouraged me in my choice of career.             ;oald
;मेरे माता पिता ने हमेशा कैरियर के मेरे चयन में मुझे प्रोत्साहित किया है.
;Music and lighting are used to encourage shoppers to buy more.            ;oald
;संगीत और प्रकाश दुकानदारों को अधिक खरीदने के लिए प्रोत्साहित करती है. 
