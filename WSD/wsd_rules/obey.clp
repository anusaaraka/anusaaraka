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

;@@@ Added by Sonam Gupta MTech IT Banasthali 14-3-2014
;A vector quantity is a quantity that has both a magnitude and a direction and obeys the triangle law of 
;addition or equivalently the parallelogram law of addition. [ncert]
;एक सदिश राशि वह राशि है जिसमें परिमाण तथा दिशा दोनों होते हैं तथा वह योग सम्बन्धी त्रिभुज के नियम अथवा समानान्तर चतुर्भुज के योग सम्बन्धी नियम का पालन करती है .
(defrule obey1
(declare (salience 5000))
(id-root ?id obey)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 law|command|order)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAlana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  obey.clp 	obey1   "  ?id "  pAlana_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 14-3-2014
;He had always obeyed his parents without question. [oald]
;उसने सदैव बिना प्रश्न किये अपने माता पिता का अाज्ञापालन किया है .
(defrule obey2
(id-root ?id obey)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AjFApAlana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  obey.clp 	obey2   "  ?id "  AjFApAlana_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 14-3-2014
;The road sign obeys left. [Cambridge]
;सड़क दायी तरफ की ओर इशारा करती है .
(defrule obey3
(id-root ?id obey)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AjFApAlana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  obey.clp 	obey3   "  ?id "  AjFApAlana_kara )" crlf))
)
