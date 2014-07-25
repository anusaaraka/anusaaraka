;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
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
;@@@ Added by Prachi Rathore[25-1-14]
; These ancient woodlands are under threat from new road developments.[oald]
;Drugs pose a major threat to our society.[oald]
(defrule threat0
(declare (salience 5000))
(id-root ?id threat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-to_saMbanXI  ?id ?)(kriyA-under_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KawarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  threat.clp 	threat0   "  ?id "  KawarA )" crlf))
)


;@@@ Added by Prachi Rathore[25-1-14]
;The forecast is for rain with the threat of thunderstorms.[oald]
(defrule threat1
(declare (salience 5000))
(id-root ?id threat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cewAvanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  threat.clp 	threat1   "  ?id "  cewAvanI )" crlf))
)


;@@@ Added by Prachi Rathore[21-2-14]
; A lot of these chemicals pose very real threats to our health.[cambridge]
(defrule threat3
(declare (salience 5000))
(id-root ?id threat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(kriyA-to_saMbanXI  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KawarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  threat.clp 	threat3   "  ?id "  KawarA )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[25-1-14]
;
(defrule threat2
(declare (salience 4000))
(id-root ?id threat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XamakI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  threat.clp 	threat2   "  ?id "  XamakI )" crlf))
)
