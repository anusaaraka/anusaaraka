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

;@@@ Added by jagriti(25.3.2014)
;There is certainly scope for improvement in the economy. [iit-bombay]
;निश्चित रूप से अर्थ प्रबन्धन में सुधार के लिये गुंजाइश है . 
(defrule scope1
(declare (salience 5000))
(id-root ?id scope)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-for_saMbanXI ?id ?id1)(viSeRya-in_saMbanXI ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guMjAiSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scope.clp 	scope1   "  ?id "  guMjAiSa )" crlf))
)
;@@@ Added by jagriti(25.3.2014)
;I cannot do so, it is beyond my scope.[rajpal]
;मैं इतना नहीं कर सकता हूँ, यह मेरे पहुंच के बाहर है . 
(defrule scope2
(declare (salience 4900))
(id-root ?id scope)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-beyond_saMbanXI ?id1 ?id)(kriyA-within_saMbanXI ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scope.clp 	scope2   "  ?id "  pahuMca )" crlf))
)
;...Default Rule..
;@@@ Added by jagriti(25.3.2014)
;Our powers are limited in scope.[oald]
;हमारे अधिकार क्षेत्र में सीमित हो गये हैं . ``````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````
(defrule scope3
(declare (salience 100))
(id-root ?id scope)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRewra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scope.clp 	scope3   "  ?id "  kRewra )" crlf))
)


