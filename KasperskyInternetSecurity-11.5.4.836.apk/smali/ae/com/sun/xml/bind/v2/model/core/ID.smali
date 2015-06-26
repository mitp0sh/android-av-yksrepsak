.class public final enum Lae/com/sun/xml/bind/v2/model/core/ID;
.super Ljava/lang/Enum;
.source "ID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lae/com/sun/xml/bind/v2/model/core/ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lae/com/sun/xml/bind/v2/model/core/ID;

.field public static final enum ID:Lae/com/sun/xml/bind/v2/model/core/ID;

.field public static final enum IDREF:Lae/com/sun/xml/bind/v2/model/core/ID;

.field public static final enum NONE:Lae/com/sun/xml/bind/v2/model/core/ID;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lae/com/sun/xml/bind/v2/model/core/ID;

    const-string v1, "ID"

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/model/core/ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/core/ID;->ID:Lae/com/sun/xml/bind/v2/model/core/ID;

    new-instance v0, Lae/com/sun/xml/bind/v2/model/core/ID;

    const-string v1, "IDREF"

    invoke-direct {v0, v1, v3}, Lae/com/sun/xml/bind/v2/model/core/ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/core/ID;->IDREF:Lae/com/sun/xml/bind/v2/model/core/ID;

    new-instance v0, Lae/com/sun/xml/bind/v2/model/core/ID;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lae/com/sun/xml/bind/v2/model/core/ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/core/ID;->NONE:Lae/com/sun/xml/bind/v2/model/core/ID;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lae/com/sun/xml/bind/v2/model/core/ID;

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/ID;->ID:Lae/com/sun/xml/bind/v2/model/core/ID;

    aput-object v1, v0, v2

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/ID;->IDREF:Lae/com/sun/xml/bind/v2/model/core/ID;

    aput-object v1, v0, v3

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/ID;->NONE:Lae/com/sun/xml/bind/v2/model/core/ID;

    aput-object v1, v0, v4

    sput-object v0, Lae/com/sun/xml/bind/v2/model/core/ID;->$VALUES:[Lae/com/sun/xml/bind/v2/model/core/ID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/model/core/ID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lae/com/sun/xml/bind/v2/model/core/ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/core/ID;

    return-object v0
.end method

.method public static values()[Lae/com/sun/xml/bind/v2/model/core/ID;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/ID;->$VALUES:[Lae/com/sun/xml/bind/v2/model/core/ID;

    invoke-virtual {v0}, [Lae/com/sun/xml/bind/v2/model/core/ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lae/com/sun/xml/bind/v2/model/core/ID;

    return-object v0
.end method
