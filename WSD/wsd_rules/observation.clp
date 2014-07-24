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

;@@@ Added by Pramila Banasthali 13-02-2014
;I did not make a single observation on the affair.  ;shiksharthi
;मैंने इस मामले पर एक टिप्पणी भी नहीं की.
;He began by making a few general observations about the report.     ;oald
;उसने रिपोर्ट के बारे में कुछ सामान्य टिप्पणियाँ करने से शुरू किया.
(defrule observation0
(declare (salience 4900))
(id-root ?id observation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?kri ?id)
(kriyA-on_saMbanXI  ?kri ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tippaNI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  observation.clp 	observation0   "  ?id " tippaNI  )" crlf))
)

;@@@ Added by Pramila Banasthali 13-02-2014
;That was an observation against him.    ;shiksharthi
;यह उसके विरुद्ध एक टिप्पणी थी.
;He began by making a few general observations about the report.     ;oald
;उसने रिपोर्ट के बारे में कुछ सामान्य टिप्पणियाँ करने से शुरू किया.
;She has some interesting observations on possible future developments.  ;oald
;उसके पास संभावित भविष्य विकास पर कुछ रुचिकर टिप्पणियाँ है.
(defrule observation1
(declare (salience 4900))
(id-root ?id observation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-against_saMbanXI  ?id ?id1)(viSeRya-about_saMbanXI  ?id ?id1)(viSeRya-on_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tippaNI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  observation.clp 	observation1   "  ?id " tippaNI  )" crlf))
)

;---------------default rules----------------------

;@@@ Added by Pramila Banasthali 13-02-2014
;The police kept the accused patient under observation.     ;shiksharthi
;पुलिस ने बीमार आदमी को पर्यवेक्षण में रखा.
(defrule observation2
(declare (salience 100))
(id-root ?id observation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paryavekRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  observation.clp 	observation2   "  ?id " paryavekRaNa  )" crlf))
)


;@@@ Added by Pramila Banasthali 13-02-2014
(defrule observation3
(declare (salience 0))
(id-root ?id observation)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paryavekRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  observation.clp 	observation3   "  ?id " paryavekRaNa  )" crlf))
)

