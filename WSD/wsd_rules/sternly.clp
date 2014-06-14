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
;@@@ Added by jagriti(4.4.2014)
;Following the incident the shopkeepers in the market have been sternly requested to take all necessary safety precautions.[news-dev]
;घटना को देखते हुए बाजार में भी दुकानदारों से सुरक्षा बरतने के सख्त निर्देश दे दिए गए हैं। 
(defrule sternly0
(declare (salience 5000))
(id-root ?id sternly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
(id-root ?id1 request|order)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saKwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sternly.clp 	sternly0   "  ?id "  saKwa)" crlf))
)
;...Default Rule....
;@@@ Added by jagriti(4.4.2014)
;She peered sternly over her glasses. [iit-bombay wordnet]
;उसने अपने काँच में कठोरतापूर्वक ताका . 
(defrule sternly1
(declare (salience 100))
(id-root ?id sternly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTorawApUrvaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sternly.clp 	sternly1   "  ?id "  kaTorawApUrvaka)" crlf))
)

