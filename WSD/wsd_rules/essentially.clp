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
;The argument was essentially a technical one.
;A communication satellite is essentially a repeater station in space.
;His saying is essentially true.
;They are essentially never-ending.
;They are essentially supporting you.
;It essentially bans foreigners from carrying guns in Mexico.

(defrule essentially0
(declare (salience 4900))
(id-root ?id essentially)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaka  ?id1 ?id)(kriyA-kriyA_viSeRaNa  ?kri ?id))
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAswava_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  essentially.clp 	essentially0   "  ?id " vAswava_meM  )" crlf))
)

;It has to be essentially done.
;It has to be essentially better.
(defrule essentially1
(declare (salience 5000))
(id-root ?id essentially)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?kri ?id)
(kriyA-kriyArWa_kriyA  ?id1 ?kri)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvaSyaka_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  essentially.clp 	essentially1   "  ?id " AvaSyaka_rUpa_se )" crlf))
)


;----------------------------------------- Default rules -------------------------------------------------
(defrule essentially2
(declare (salience 5000))
(id-root ?id essentially)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvaSyaka_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  essentially.clp 	essentially2   "  ?id " AvaSyaka_rUpa_se )" crlf))
)


(defrule essentially3
(declare (salience 5000))
(id-root ?id essentially)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wawwvawaH))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  essentially.clp 	essentially3   "  ?id " wawwvawaH )" crlf))
)

