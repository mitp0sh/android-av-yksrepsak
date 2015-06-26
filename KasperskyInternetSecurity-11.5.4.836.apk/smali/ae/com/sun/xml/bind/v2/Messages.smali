.class final enum Lae/com/sun/xml/bind/v2/Messages;
.super Ljava/lang/Enum;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lae/com/sun/xml/bind/v2/Messages;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lae/com/sun/xml/bind/v2/Messages;

.field public static final enum BROKEN_CONTEXTPATH:Lae/com/sun/xml/bind/v2/Messages;

.field public static final enum ERROR_LOADING_CLASS:Lae/com/sun/xml/bind/v2/Messages;

.field public static final enum ILLEGAL_ENTRY:Lae/com/sun/xml/bind/v2/Messages;

.field public static final enum INVALID_PROPERTY_VALUE:Lae/com/sun/xml/bind/v2/Messages;

.field public static final enum INVALID_TYPE_IN_MAP:Lae/com/sun/xml/bind/v2/Messages;

.field public static final enum NO_DEFAULT_CONSTRUCTOR_IN_INNER_CLASS:Lae/com/sun/xml/bind/v2/Messages;

.field public static final enum UNSUPPORTED_PROPERTY:Lae/com/sun/xml/bind/v2/Messages;

.field private static final rb:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lae/com/sun/xml/bind/v2/Messages;

    const-string v1, "ILLEGAL_ENTRY"

    invoke-direct {v0, v1, v3}, Lae/com/sun/xml/bind/v2/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/Messages;->ILLEGAL_ENTRY:Lae/com/sun/xml/bind/v2/Messages;

    .line 51
    new-instance v0, Lae/com/sun/xml/bind/v2/Messages;

    const-string v1, "ERROR_LOADING_CLASS"

    invoke-direct {v0, v1, v4}, Lae/com/sun/xml/bind/v2/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/Messages;->ERROR_LOADING_CLASS:Lae/com/sun/xml/bind/v2/Messages;

    .line 52
    new-instance v0, Lae/com/sun/xml/bind/v2/Messages;

    const-string v1, "INVALID_PROPERTY_VALUE"

    invoke-direct {v0, v1, v5}, Lae/com/sun/xml/bind/v2/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/Messages;->INVALID_PROPERTY_VALUE:Lae/com/sun/xml/bind/v2/Messages;

    .line 53
    new-instance v0, Lae/com/sun/xml/bind/v2/Messages;

    const-string v1, "UNSUPPORTED_PROPERTY"

    invoke-direct {v0, v1, v6}, Lae/com/sun/xml/bind/v2/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/Messages;->UNSUPPORTED_PROPERTY:Lae/com/sun/xml/bind/v2/Messages;

    .line 54
    new-instance v0, Lae/com/sun/xml/bind/v2/Messages;

    const-string v1, "BROKEN_CONTEXTPATH"

    invoke-direct {v0, v1, v7}, Lae/com/sun/xml/bind/v2/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/Messages;->BROKEN_CONTEXTPATH:Lae/com/sun/xml/bind/v2/Messages;

    .line 55
    new-instance v0, Lae/com/sun/xml/bind/v2/Messages;

    const-string v1, "NO_DEFAULT_CONSTRUCTOR_IN_INNER_CLASS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/Messages;->NO_DEFAULT_CONSTRUCTOR_IN_INNER_CLASS:Lae/com/sun/xml/bind/v2/Messages;

    .line 56
    new-instance v0, Lae/com/sun/xml/bind/v2/Messages;

    const-string v1, "INVALID_TYPE_IN_MAP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/Messages;->INVALID_TYPE_IN_MAP:Lae/com/sun/xml/bind/v2/Messages;

    .line 49
    const/4 v0, 0x7

    new-array v0, v0, [Lae/com/sun/xml/bind/v2/Messages;

    sget-object v1, Lae/com/sun/xml/bind/v2/Messages;->ILLEGAL_ENTRY:Lae/com/sun/xml/bind/v2/Messages;

    aput-object v1, v0, v3

    sget-object v1, Lae/com/sun/xml/bind/v2/Messages;->ERROR_LOADING_CLASS:Lae/com/sun/xml/bind/v2/Messages;

    aput-object v1, v0, v4

    sget-object v1, Lae/com/sun/xml/bind/v2/Messages;->INVALID_PROPERTY_VALUE:Lae/com/sun/xml/bind/v2/Messages;

    aput-object v1, v0, v5

    sget-object v1, Lae/com/sun/xml/bind/v2/Messages;->UNSUPPORTED_PROPERTY:Lae/com/sun/xml/bind/v2/Messages;

    aput-object v1, v0, v6

    sget-object v1, Lae/com/sun/xml/bind/v2/Messages;->BROKEN_CONTEXTPATH:Lae/com/sun/xml/bind/v2/Messages;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lae/com/sun/xml/bind/v2/Messages;->NO_DEFAULT_CONSTRUCTOR_IN_INNER_CLASS:Lae/com/sun/xml/bind/v2/Messages;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lae/com/sun/xml/bind/v2/Messages;->INVALID_TYPE_IN_MAP:Lae/com/sun/xml/bind/v2/Messages;

    aput-object v2, v0, v1

    sput-object v0, Lae/com/sun/xml/bind/v2/Messages;->$VALUES:[Lae/com/sun/xml/bind/v2/Messages;

    .line 59
    const-class v0, Lae/com/sun/xml/bind/v2/Messages;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/Messages;->rb:Ljava/util/ResourceBundle;

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

.method public static valueOf(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/Messages;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lae/com/sun/xml/bind/v2/Messages;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/Messages;

    return-object v0
.end method

.method public static values()[Lae/com/sun/xml/bind/v2/Messages;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lae/com/sun/xml/bind/v2/Messages;->$VALUES:[Lae/com/sun/xml/bind/v2/Messages;

    invoke-virtual {v0}, [Lae/com/sun/xml/bind/v2/Messages;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lae/com/sun/xml/bind/v2/Messages;

    return-object v0
.end method


# virtual methods
.method public varargs format([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 66
    sget-object v0, Lae/com/sun/xml/bind/v2/Messages;->rb:Ljava/util/ResourceBundle;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/Messages;->name()Ljava/lang/String;

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
    .line 62
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
