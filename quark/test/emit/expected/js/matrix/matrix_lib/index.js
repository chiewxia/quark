var _qrt = require("builtin/quark_runtime.js");

// CLASS Matrix

function Matrix(width, height) {
    this.__init_fields__();
    (this).width = width;
    (this).height = height;
    this.columns = [];
    while (((this.columns).length) < (width)) {
        var column = [];
        while (((column).length) < (height)) {
            (column).push(null);
        }
        (this.columns).push(column);
    }
}
exports.Matrix = Matrix;

function Matrix__init_fields__() {
    this.width = null;
    this.height = null;
    this.columns = null;
}
Matrix.prototype.__init_fields__ = Matrix__init_fields__;

function Matrix___get__(i, j) {
    return ((this.columns)[i])[j];
}
Matrix.prototype.__get__ = Matrix___get__;

function Matrix___set__(i, j, value) {
    ((this.columns)[i])[j] = (value);
}
Matrix.prototype.__set__ = Matrix___set__;

function Matrix__getClass() {
    return "Matrix<Object>";
}
Matrix.prototype._getClass = Matrix__getClass;

function Matrix__getField(name) {
    if ((name) === ("width")) {
        return (this).width;
    }
    if ((name) === ("height")) {
        return (this).height;
    }
    if ((name) === ("columns")) {
        return (this).columns;
    }
    return null;
}
Matrix.prototype._getField = Matrix__getField;

function Matrix__setField(name, value) {
    if ((name) === ("width")) {
        (this).width = value;
    }
    if ((name) === ("height")) {
        (this).height = value;
    }
    if ((name) === ("columns")) {
        (this).columns = value;
    }
}
Matrix.prototype._setField = Matrix__setField;

function main() {
    var matrix = new Matrix(3, 3);
    (matrix).__set__(2, 2, 123);
    _qrt.print((matrix).__get__(2, 2));
}
exports.main = main;
