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


;@@@ Added by Sonam Gupta MTech IT Banasthali 21-1-2014
;It is obvious that a course of training of this description, if it is rightly pursued, and if unintelligent 
;memory work is discarded, is bound to develop the intelligence and to qualify the student for admission to a 
;course of University studies. [Gyannidhi]
;स्पष्ट है कि ठीक ढंग से लागू किये जाने और रटने की मूर्खतापूर्ण आदत को त्याग देने से इस प्रकार के प्रशिक्षण पाठ्यक्रम से हर हालत में बुद्धि का विकास होगा 
;और विद्यार्थी विश्वविद्यालय शिक्षा में प्रवेश के योग्य बनाया जा सकेगा।
(defrule pursue1
(declare (salience 5000))
(id-root ?id pursue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-root ?id1 rightly|correctly)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAgU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pursue.clp     pursue1   "  ?id "  lAgU_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 21-1-2014
;She decided to pursue a career in television. [Cambridge]
;उसने टेलीविजन में करियर बनाने का फैसला किया .
(defrule pursue2
(declare (salience 5000))
(id-root ?id pursue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 career)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pursue.clp     pursue2   "  ?id "  banA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 22-1-2014
;We will not be pursuing this matter any further. [Cambridge]
;हम इस विषय को और अधिक नहीं खोजेंगे .
(defrule pursue3
(declare (salience 5000))
(id-root ?id pursue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root ?id1 matter|subject|topic|issue|line|idea)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Koja ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pursue.clp     pursue3   "  ?id "  Koja )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 22-1-2014
;We need to decide soon what marketing strategy we should pursue for these new products.  [Cambridge]
;हमें जल्दी निश्चित करना होगा कि इन नए उत्पादों के लिये कौन सी विपरण नीति का हमें अनुसरण करना होगा  .
(defrule pursue4
(declare (salience 5000))
(id-root ?id pursue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anusaraNa_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pursue.clp     pursue4   "  ?id "  anusaraNa_kara )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 22-1-2014
;She is ruthless in pursuing her goals. [Cambridge]
;वह अपने लक्ष्य को पाने में कठोर है .
(defrule pursue5
(declare (salience 5000))
(id-root ?id pursue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 goal|objective|aim)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pursue.clp     pursue5   "  ?id "  pA )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 22-1-2014
;We intend to pursue this policy with determination. [OALD]
;हम इस नीति को निश्चय के साथ अपनाने का इरादा रखते हैं .
(defrule pursue6
(declare (salience 5000))
(id-root ?id pursue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 policy|law|program|plan|strategy|schedule|procedure|hobby)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apanA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pursue.clp     pursue6   "  ?id "  apanA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 22-1-2014
;To pursue legal action. [OALD]
;कानूनी कार्यवाही लेना.
(defrule pursue7
(declare (salience 5000))
(id-root ?id pursue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 action|charge|stroke)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pursue.clp     pursue7   "  ?id "  le )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 22-1-2014
;He chose to pursue a college degree.  [OALD]
;उसने कालेज उपाधि प्राप्त करने का निश्चय किया .
(defrule pursue8
(declare (salience 5000))
(id-root ?id pursue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 degree|point|level|step|grade|intensity)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pursue.clp     pursue8   "  ?id "  prApwa_kara )" crlf))
)


;#######################################################Default Rule##########################################################################

;@@@ Added by Sonam Gupta MTech IT Banasthali 21-1-2014
;The car was pursued by helicopters. [Cambridge]
;गाङी का हेलीकोप्टर के द्वारा पीछा किया जा रहा था .
(defrule pursue9
(declare (salience 5000))
(id-root ?id pursue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICA_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pursue.clp     pursue9   "  ?id "  pICA_kara )" crlf))
)
