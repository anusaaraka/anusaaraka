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

;@@@ Added by jagriti(13.12.2013)
;The ceremony is a survival from pre-Christian times. [oald]
;संस्कार पूर्व ईसाई काल से अस्तित्व में है.
;Exporting is necessary for our economic survival.[oald]
;निर्यात हमारे आर्थिक अस्तित्व के लिए आवश्यक है.
(defrule survival0
(declare (salience 5000))
(id-root ?id survival)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa  ?id ?)(viSeRya-from_saMbanXI ?id ?))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aswiwva ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  survival.clp 	survival0   "  ?id "  aswiwva)" crlf))
) 
;@@@ Added by jagriti(13.12.2013)
;Nowadays a premature baby has a very good chance of survival.
;आजकल एक असामयिक शिशु को जीवित रहने एक बहुत अच्छा अवसर है .
(defrule survival1
(declare (salience 4900))
(id-root ?id survival)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIviwa_rahanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  survival.clp 	survival1   "  ?id "  jIviwa_rahanA)" crlf))
) 
;@@@ Added by jagriti(13.12.2013)
;The miraculous survival of some people in the air crash. 
;विमान दुर्घटना में कुछ लोगों की चमत्कारी उत्तरजीविता.
(defrule survival2
(declare (salience 4800))
(id-root ?id survival)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwarajIviwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  survival.clp 	survival2   "  ?id "  uwwarajIviwA)" crlf))
) 
