.class public final Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static default_value_boolean:Z

.field public static default_value_byte:B

.field public static default_value_char:C

.field public static default_value_double:D

.field public static default_value_float:F

.field public static default_value_int:I

.field public static default_value_long:J

.field public static default_value_short:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    sput-byte v2, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Const;->default_value_byte:B

    .line 48
    sput-boolean v2, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Const;->default_value_boolean:Z

    .line 49
    sput-char v2, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Const;->default_value_char:C

    .line 50
    const/4 v0, 0x0

    sput v0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Const;->default_value_float:F

    .line 51
    const-wide/16 v0, 0x0

    sput-wide v0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Const;->default_value_double:D

    .line 52
    sput v2, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Const;->default_value_int:I

    .line 53
    const-wide/16 v0, 0x0

    sput-wide v0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Const;->default_value_long:J

    .line 54
    sput-short v2, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Const;->default_value_short:S

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
