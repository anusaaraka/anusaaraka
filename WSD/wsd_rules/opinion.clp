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

;@@@ Added by Sonam Gupta MTech IT Banasthali 16-1-2014
;Educated opinion in the country could not be expected to remain satisfied with a University of this type and the 
;question of amending the Act of 1857 came under active consideration of the University as early as 1890.  [Gyanidhi]
;देश में शिक्षित लोग इस किस्म के विश्वविद्यालय से संतुष्ट रहें, यह आशा नहीं की जा सकती थी और 1857 के अधिनियम के संशोधन का प्रश्न 1890 में ही विश्वविद्यालय 
;द्वारा सक्रिय रूप से सोच-विचार के लिए चुन लिया गया था।
(defrule opinion1
(declare (salience 5500))
(id-root ?id opinion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 educated|sophiscated)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id loga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  opinion.clp 	opinion1   "  ?id "  loga )" crlf))
)

;@@@ Added by Pramila(BU) on 03-04-2014
;He did not reckon the true opinion of my work.  ;shiksharthi
;उसने मेरे काम का सही मूल्यांकन नहीं किया.
(defrule opinion2
(declare (salience 5500))
(id-root ?id opinion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id2 ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlyAMkana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  opinion.clp 	opinion2   "  ?id "  mUlyAMkana )" crlf))
)
;------------Default rule -------------------------

;@@@ Added by Sonam Gupta MTech IT Banasthali 16-1-2014
;What's your opinion about the matter? [Cambridge]
;इस विषय में आपकी क्या राय है .
(defrule opinion3
(id-root ?id opinion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  opinion.clp 	opinion3   "  ?id "  rAya )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_opinion1
(declare (salience 5500))
(id-root ?id opinion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 educated|sophiscated)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id loga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " opinion.clp   sub_samA_opinion1   "   ?id " loga )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_opinion1
(declare (salience 5500))
(id-root ?id opinion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 educated|sophiscated)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id loga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " opinion.clp   obj_samA_opinion1   "   ?id " loga )" crlf))
)
