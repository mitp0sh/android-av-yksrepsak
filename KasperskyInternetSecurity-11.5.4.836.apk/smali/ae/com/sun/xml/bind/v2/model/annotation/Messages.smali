.class final enum Lae/com/sun/xml/bind/v2/model/annotation/Messages;
.super Ljava/lang/Enum;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lae/com/sun/xml/bind/v2/model/annotation/Messages;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lae/com/sun/xml/bind/v2/model/annotation/Messages;

.field public static final enum CLASS_NOT_FOUND:Lae/com/sun/xml/bind/v2/model/annotation/Messages;

.field public static final enum DUPLICATE_ANNOTATIONS:Lae/com/sun/xml/bind/v2/model/annotation/Messages;

.field private static final rb:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lae/com/sun/xml/bind/v2/model/annotation/Messages;

    const-string v1, "DUPLICATE_ANNOTATIONS"

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/model/annotation/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/annotation/Messages;->DUPLICATE_ANNOTATIONS:Lae/com/sun/xml/bind/v2/model/annotation/Messages;

    .line 52
    new-instance v0, Lae/com/sun/xml/bind/v2/model/annotation/Messages;

    const-string v1, "CLASS_NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lae/com/sun/xml/bind/v2/model/annotation/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/annotation/Messages;->CLASS_NOT_FOUND:Lae/com/sun/xml/bind/v2/model/annotation/Messages;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Lae/com/sun/xml/bind/v2/model/annotation/Messages;

    sget-object v1, Lae/com/sun/xml/bind/v2/model/annotation/Messages;->DUPLICATE_ANNOTATIONS:Lae/com/sun/xml/bind/v2/model/annotation/Messages;

    aput-object v1, v0, v2

    sget-object v1, Lae/com/sun/xml/bind/v2/model/annotation/Messages;->CLASS_NOT_FOUND:Lae/com/sun/xml/bind/v2/model/annotation/Messages;

    aput-object v1, v0, v3

    sput-object v0, Lae/com/sun/xml/bind/v2/model/annotation/Messages;->$VALUES:[Lae/com/sun/xml/bind/v2/model/annotation/Messages;

    .line 55
    const-class v0, Lae/com/sun/xml/bind/v2/model/annotation/Messages;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/model/annotation/Messages;->rb:Ljava/util/ResourceBundle;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/model/annotation/Messages;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lae/com/sun/xml/bind/v2/model/annotation/Messages;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/annotation/Messages;

    return-object v0
.end method

.method public static values()[Lae/com/sun/xml/bind/v2/model/annotation/Messages;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lae/com/sun/xml/bind/v2/model/annotation/Messages;->$VALUES:[Lae/com/sun/xml/bind/v2/model/annotation/Messages;

    invoke-virtual {v0}, [Lae/com/sun/xml/bind/v2/model/annotation/Messages;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lae/com/sun/xml/bind/v2/model/annotation/Messages;

    return-object v0
.end method


# virtual methods
.method public varargs format([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 62
    sget-object v0, Lae/com/sun/xml/bind/v2/model/annotation/Messages;->rb:Ljava/util/ResourceBundle;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/annotation/Messages;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/model/annotation/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
