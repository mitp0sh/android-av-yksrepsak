.class public final enum Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
.super Ljava/lang/Enum;
.source "PropertyKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lae/com/sun/xml/bind/v2/model/core/PropertyKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

.field public static final enum ATTRIBUTE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

.field public static final enum ELEMENT:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

.field public static final enum MAP:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

.field public static final enum REFERENCE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

.field public static final enum VALUE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;


# instance fields
.field public final canHaveXmlMimeType:Z

.field public final isOrdered:Z

.field public final propertyIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    const-string v1, "VALUE"

    const v5, 0x7fffffff

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;-><init>(Ljava/lang/String;IZZI)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->VALUE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    .line 60
    new-instance v4, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    const-string v5, "ATTRIBUTE"

    const v9, 0x7fffffff

    move v6, v3

    move v7, v2

    move v8, v2

    invoke-direct/range {v4 .. v9}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;-><init>(Ljava/lang/String;IZZI)V

    sput-object v4, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ATTRIBUTE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    .line 61
    new-instance v4, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    const-string v5, "ELEMENT"

    move v6, v10

    move v7, v3

    move v8, v3

    move v9, v2

    invoke-direct/range {v4 .. v9}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;-><init>(Ljava/lang/String;IZZI)V

    sput-object v4, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ELEMENT:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    .line 62
    new-instance v4, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    const-string v5, "REFERENCE"

    move v6, v11

    move v7, v2

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;-><init>(Ljava/lang/String;IZZI)V

    sput-object v4, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->REFERENCE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    .line 63
    new-instance v4, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    const-string v5, "MAP"

    move v6, v12

    move v7, v2

    move v8, v3

    move v9, v10

    invoke-direct/range {v4 .. v9}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;-><init>(Ljava/lang/String;IZZI)V

    sput-object v4, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->MAP:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->VALUE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    aput-object v1, v0, v2

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ATTRIBUTE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    aput-object v1, v0, v3

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ELEMENT:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    aput-object v1, v0, v10

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->REFERENCE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    aput-object v1, v0, v11

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->MAP:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    aput-object v1, v0, v12

    sput-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->$VALUES:[Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZI)V
    .locals 0
    .param p3, "canHaveExpectedContentType"    # Z
    .param p4, "isOrdered"    # Z
    .param p5, "propertyIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput-boolean p3, p0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->canHaveXmlMimeType:Z

    .line 85
    iput-boolean p4, p0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->isOrdered:Z

    .line 86
    iput p5, p0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->propertyIndex:I

    .line 87
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    return-object v0
.end method

.method public static values()[Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->$VALUES:[Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    invoke-virtual {v0}, [Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    return-object v0
.end method
