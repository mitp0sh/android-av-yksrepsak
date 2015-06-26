.class final enum Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;
.super Ljava/lang/Enum;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

.field public static final enum NO_GETTER:Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

.field public static final enum NO_SETTER:Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

.field public static final enum UNABLE_TO_ACCESS_NON_PUBLIC_FIELD:Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

.field public static final enum UNASSIGNABLE_TYPE:Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

.field private static final rb:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    const-string v1, "UNABLE_TO_ACCESS_NON_PUBLIC_FIELD"

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->UNABLE_TO_ACCESS_NON_PUBLIC_FIELD:Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    .line 52
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    const-string v1, "UNASSIGNABLE_TYPE"

    invoke-direct {v0, v1, v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->UNASSIGNABLE_TYPE:Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    .line 53
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    const-string v1, "NO_SETTER"

    invoke-direct {v0, v1, v4}, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->NO_SETTER:Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    .line 54
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    const-string v1, "NO_GETTER"

    invoke-direct {v0, v1, v5}, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->NO_GETTER:Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->UNABLE_TO_ACCESS_NON_PUBLIC_FIELD:Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    aput-object v1, v0, v2

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->UNASSIGNABLE_TYPE:Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    aput-object v1, v0, v3

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->NO_SETTER:Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    aput-object v1, v0, v4

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->NO_GETTER:Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    aput-object v1, v0, v5

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->$VALUES:[Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    .line 57
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->rb:Ljava/util/ResourceBundle;

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

.method public static valueOf(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    return-object v0
.end method

.method public static values()[Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->$VALUES:[Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    invoke-virtual {v0}, [Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    return-object v0
.end method


# virtual methods
.method public varargs format([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 64
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->rb:Ljava/util/ResourceBundle;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->name()Ljava/lang/String;

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
    .line 60
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
