.class public final enum Lae/com/sun/xml/bind/v2/model/core/WildcardMode;
.super Ljava/lang/Enum;
.source "WildcardMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lae/com/sun/xml/bind/v2/model/core/WildcardMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

.field public static final enum LAX:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

.field public static final enum SKIP:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

.field public static final enum STRICT:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;


# instance fields
.field public final allowDom:Z

.field public final allowTypedObject:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 49
    new-instance v0, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    const-string v1, "STRICT"

    invoke-direct {v0, v1, v3, v3, v2}, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->STRICT:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    new-instance v0, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    const-string v1, "SKIP"

    invoke-direct {v0, v1, v2, v2, v3}, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->SKIP:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    new-instance v0, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    const-string v1, "LAX"

    invoke-direct {v0, v1, v4, v2, v2}, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->LAX:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->STRICT:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    aput-object v1, v0, v3

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->SKIP:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    aput-object v1, v0, v2

    sget-object v1, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->LAX:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    aput-object v1, v0, v4

    sput-object v0, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->$VALUES:[Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .param p3, "allowDom"    # Z
    .param p4, "allowTypedObject"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-boolean p3, p0, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->allowDom:Z

    .line 56
    iput-boolean p4, p0, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->allowTypedObject:Z

    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/model/core/WildcardMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    return-object v0
.end method

.method public static values()[Lae/com/sun/xml/bind/v2/model/core/WildcardMode;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->$VALUES:[Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    invoke-virtual {v0}, [Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    return-object v0
.end method
