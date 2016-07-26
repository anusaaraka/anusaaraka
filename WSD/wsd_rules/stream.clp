;##############################################################################
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
;########################################################################
;@@@ Added by Jagriti
;She felt a stream of air.[sabdakosh]‎
;उसने हवा का एक  प्रवाह  महसूस किया .
(defrule stream0
(declare (salience 5000))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or (viSeRya-viSeRaNa ?id ?id1)(viSeRya-of_saMbanXI ?id ?id1)(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id))
(id-word ?id1 air|video|passage)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pravAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream0   "  ?id "  pravAha )" crlf))
)

;@@@ Added by Jagriti
;A stream of blood flowed from the wound.  [oxford adv lear]
;खून की एक धारा घाव से प्रवाहित होती है.
;He blew out a stream of cigar smoke.       [oxford adv lear]
;उन्होंने सिगार के धुएं की एक धारा को बाहर फूंका.
(defrule stream1
(declare (salience 4900))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI ?id ?id1)(samAsa_viSeRya-samAsa_viSeRaNa ?id ?id1))
(id-root ?id1 blood|smoke)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream1   "  ?id "  XArA )" crlf))
)
 
;@@@ Added by Jagriti
;I'm in the A stream for maths, and the B stream for english.		[cambridge learner]
;मैं गणित के ए वर्ग में हूँ,और अंग्रेजी के बी वर्ग में हूँ.
(defrule stream2
(declare (salience 4800))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or (viSeRya-viSeRaNa ?id ?id1)(viSeRya-of_saMbanXI ?id ?id1)(viSeRya-for_saMbanXI  ?id ?))
(id-word ?id1 computerscience|commerce|science|art|math|english)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream2   "  ?id " varga )" crlf))
) 

;Our automated system will test your connection speed and send the best video stream so it plays smoothly and continuously.
;[www.wordhippo.com/what-is/sentences-with-the-word/stream.html‎] 
;हमारी स्वचालित प्रणाली आपके कनेक्शन की गति का परीक्षण करेंगे और सबसे अच्छा वीडियो प्रसारण भेज देंगे जिससे यह आसानी से और लगातार चलता रहे.
(defrule stream3
(declare (salience 4700))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa ?id ?id1)
(id-word ?id1 video)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasAraN))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream3   "  ?id "  prasAraN )" crlf))
)

                                      
;There has been a steady stream of phone calls from worried customers.	       [cambridge learner]
;चिंतित ग्राहकों के फोन कॉल का लगातार तांता लगा रहा.
; I had a constant stream of visitors while I was ill.			       [cambridge learner]
; मेरे पास आगंतुकों का निरंतर तांता लगा रहा जब मैं बीमार था.
(defrule stream4
(declare (salience 4600))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 visitor|phone|call)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAMwA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream4  "  ?id " wAMwA_lagA )" crlf))
)

;@@@ Added by Jagriti
;There were tears streaming down his face. [cambridge learner]
;उसके चेहरे से आँसू बह रहे थे.
;One woman was carried from the scene of the accident with blood streaming from her head.[cambridge learner]
;सिर से बहते हुए रक्त के साथ एक महिला को दुर्घटना स्थल से लाया गया.
(defrule stream5
(declare (salience 4500))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id streaming)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream5   "  ?id "  baha )" crlf))
)

;@@@ Added by Jagriti
;His hair streamed out behind him as he rode off.[cambridge learner]
;सवारी करते हुए उसके बाल उसके पीछे लहरा रहे थे.
(defrule stream6
(declare (salience 4400))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id streamed)
(id-cat_coarse ?id verb)
(id-word =(+ ?id 1) out)
(kriyA-subject ?id ?id1)
(id-word ?id1 hair)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lahara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream6   "  ?id "  lahara )" crlf))
)

;@@@ Added by Jagriti
;We were all very excited as we streamed out of our final exam.[cambridge learner]
; अपने अंतिम परीक्षा से बाहर निकलते हुए हम सभी बहुत उत्साहित थे.
(defrule stream7
(declare (salience 4300))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id streamed)
(id-cat_coarse ?id verb)
(id-word =(+ ?id 1) out)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream7   "  ?id "  nikala )" crlf))
)

;@@@ Added by Jagriti
;Officials estimate that 20,000 refugees streamed into the city last week.   [cambridge learner]
;अधिकारियों ने बताया कि 20,000 शरणार्थी पिछले सप्ताह शहर में जा रहे थे. 
(defrule stream8
(declare (salience 4200))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id streamed)
(kriyA-into_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream8   "  ?id "  jA )" crlf))
)

;@@@ Added by Jagriti
;Hundreds of letters streamed in from listeners.[merriam webstar]
; श्रोताओं से सैकड़ों पत्र आ रहे थे.
(defrule stream9
(declare (salience 4100))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id streamed)
(kriyA-from_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream9   "  ?id "  A )" crlf))
)

;@@@ Added by Jagriti
;His life was streamed with difficulties and hardships.[raftar]
; उनका जीवन कष्टों और कठिनाइयों से भरा हुआ था.
(defrule stream10
(declare (salience 4000))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id streamed)
(id-word =(+ ?id 1) with)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream10   "  ?id "  BarA_ho )" crlf))
)

;@@@ Added by Jagriti
;I could feel the cold air streaming in through the crack in the window.[merriam webstar]
;मैं खिड़की से बहती हुइ ठंडी हवा को महसूस कर सकता था.
(defrule stream11
(declare (salience 3900))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-word ?id streaming)
(samAsa_viSeRya-samAsa_viSeRaNa ?id ?id1)
(id-root ?id1 air)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream11   "  ?id "  baha )" crlf))
)
;.......default rule.....................

;Hilly areas are full of natural streams.[hindkhoj]
; पहाड़ी क्षेत्र प्राकृतिक जल धाराओं से भरे हुए हैं.
(defrule stream12
(declare (salience 1))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalaXArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream12   "  ?id "  jalaXArA )" crlf))
)

;@@@ Added by Jagriti
;We start to stream the children in the third form.[cambridge learner]
;हम तीसरे रूप में बच्चों को विभाजित करना शुरू करते हैं.
(defrule stream13
(declare (salience 1))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viBAjiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream13   "  ?id " viBAjiwa_kara )" crlf))
)

;@@@ Added by Jagriti
;Streaming video may be accessed from the website.[http://sentence.yourdictionary.com/stream]
;प्रसारित वीडियो वेबसाइट से लिया जा सकता है.
(defrule stream14
(declare (salience 1))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasAriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream14   "  ?id "  prasAriwa )" crlf))
)

;@@@ Added by Jagriti
(defrule stream15
(declare (salience 0))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream15   "  ?id "  XArA )" crlf))
)
