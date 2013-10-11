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

;The performance left a lasting impression on Gandhi's mind.
;उस प्रदर्शन ने गान्धी के मन पर अमिट छाप छोङी
(defrule lasting0
(declare (salience 6000))
(id-root ?id lasting)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id1 noun)
(id-root ?id1 impression|performance)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id amita))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lasting.clp 	lasting0   "  ?id " amita )" crlf))
)


;Secret of a lasting marriage.
;एक स्थायी विवाह का रहस्य 
(defrule lasting1
(declare (salience 5000))
(id-root ?id lasting)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lasting.clp 	lasting1   "  ?id " sWAyI )" crlf))
)

;######################################Default rule#####################################################################
;Clay or concrete tile can be beautiful and extremely long lasting.
;मिट्टी और पत्थर की पटिया खूबसूरट और बेहद टिकाऊ हो सकती हैं
(defrule lasting2
(id-root ?id lasting)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tikAU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lasting.clp 	lasting2   "  ?id " tikAU )" crlf))
)
