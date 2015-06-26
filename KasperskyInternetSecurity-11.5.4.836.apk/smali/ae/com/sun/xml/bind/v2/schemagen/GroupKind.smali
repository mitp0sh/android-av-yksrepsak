.class final enum Lae/com/sun/xml/bind/v2/schemagen/GroupKind;
.super Ljava/lang/Enum;
.source "GroupKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lae/com/sun/xml/bind/v2/schemagen/GroupKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

.field public static final enum ALL:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

.field public static final enum CHOICE:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

.field public static final enum SEQUENCE:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    const-string v1, "ALL"

    const-string v2, "all"

    invoke-direct {v0, v1, v3, v2}, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->ALL:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    new-instance v0, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    const-string v1, "SEQUENCE"

    const-string v2, "sequence"

    invoke-direct {v0, v1, v4, v2}, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->SEQUENCE:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    new-instance v0, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    const-string v1, "CHOICE"

    const-string v2, "choice"

    invoke-direct {v0, v1, v5, v2}, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->CHOICE:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    sget-object v1, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->ALL:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    aput-object v1, v0, v3

    sget-object v1, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->SEQUENCE:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    aput-object v1, v0, v4

    sget-object v1, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->CHOICE:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    aput-object v1, v0, v5

    sput-object v0, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->$VALUES:[Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->name:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/GroupKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    return-object v0
.end method

.method public static values()[Lae/com/sun/xml/bind/v2/schemagen/GroupKind;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->$VALUES:[Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    invoke-virtual {v0}, [Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    return-object v0
.end method


# virtual methods
.method write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Particle;
    .locals 2
    .param p1, "parent"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;

    .prologue
    .line 64
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->name:Ljava/lang/String;

    const-class v1, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Particle;

    invoke-interface {p1, v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;->_element(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Particle;

    return-object v0
.end method
