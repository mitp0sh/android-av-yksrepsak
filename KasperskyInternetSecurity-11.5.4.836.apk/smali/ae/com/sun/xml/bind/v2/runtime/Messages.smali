.class final enum Lae/com/sun/xml/bind/v2/runtime/Messages;
.super Ljava/lang/Enum;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lae/com/sun/xml/bind/v2/runtime/Messages;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum CYCLE_IN_MARSHALLER:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum DANGLING_IDREF:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum ELEMENT_NEEDED_BUT_FOUND_DOCUMENT:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum ERROR_PROCESSING_SCHEMA:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum FAILED_TO_GENERATE_SCHEMA:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum ILLEGAL_CONTENT:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum ILLEGAL_PARAMETER:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum MISSING_ID:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum MISSING_OBJECT:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum MUST_BE_X:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum NOT_IDENTIFIABLE:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum NOT_IMPLEMENTED_IN_2_0:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum NOT_MARSHALLABLE:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum NULL_OUTPUT_RESOLVER:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum NULL_PROPERTY_NAME:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum SUBSTITUTED_BY_ANONYMOUS_TYPE:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum TYPE_MISMATCH:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum UNABLE_TO_DISCOVER_EVENTHANDLER:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum UNABLE_TO_FIND_CONVERSION_METHOD:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum UNABLE_TO_MARSHAL_NON_ELEMENT:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum UNABLE_TO_MARSHAL_UNBOUND_CLASS:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum UNKNOWN_CLASS:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum UNRECOGNIZED_ELEMENT_NAME:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum UNSUPPORTED_ENCODING:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum UNSUPPORTED_PROPERTY:Lae/com/sun/xml/bind/v2/runtime/Messages;

.field public static final enum UNSUPPORTED_RESULT:Lae/com/sun/xml/bind/v2/runtime/Messages;

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
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "ILLEGAL_PARAMETER"

    invoke-direct {v0, v1, v3}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->ILLEGAL_PARAMETER:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 51
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "UNABLE_TO_FIND_CONVERSION_METHOD"

    invoke-direct {v0, v1, v4}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNABLE_TO_FIND_CONVERSION_METHOD:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 52
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "MISSING_ID"

    invoke-direct {v0, v1, v5}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->MISSING_ID:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 53
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "NOT_IMPLEMENTED_IN_2_0"

    invoke-direct {v0, v1, v6}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->NOT_IMPLEMENTED_IN_2_0:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 54
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "UNRECOGNIZED_ELEMENT_NAME"

    invoke-direct {v0, v1, v7}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNRECOGNIZED_ELEMENT_NAME:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 55
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "TYPE_MISMATCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->TYPE_MISMATCH:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 56
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "MISSING_OBJECT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->MISSING_OBJECT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 57
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "NOT_IDENTIFIABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->NOT_IDENTIFIABLE:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 58
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "DANGLING_IDREF"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->DANGLING_IDREF:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 59
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "NULL_OUTPUT_RESOLVER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->NULL_OUTPUT_RESOLVER:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 60
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "UNABLE_TO_MARSHAL_NON_ELEMENT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNABLE_TO_MARSHAL_NON_ELEMENT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 61
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "UNABLE_TO_MARSHAL_UNBOUND_CLASS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNABLE_TO_MARSHAL_UNBOUND_CLASS:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 62
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "UNSUPPORTED_PROPERTY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNSUPPORTED_PROPERTY:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 63
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "NULL_PROPERTY_NAME"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->NULL_PROPERTY_NAME:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 64
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "MUST_BE_X"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->MUST_BE_X:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 65
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "NOT_MARSHALLABLE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->NOT_MARSHALLABLE:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 66
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "UNSUPPORTED_RESULT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNSUPPORTED_RESULT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 67
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "UNSUPPORTED_ENCODING"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNSUPPORTED_ENCODING:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 68
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "SUBSTITUTED_BY_ANONYMOUS_TYPE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->SUBSTITUTED_BY_ANONYMOUS_TYPE:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 69
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "CYCLE_IN_MARSHALLER"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->CYCLE_IN_MARSHALLER:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 70
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "UNABLE_TO_DISCOVER_EVENTHANDLER"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNABLE_TO_DISCOVER_EVENTHANDLER:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 71
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "ELEMENT_NEEDED_BUT_FOUND_DOCUMENT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->ELEMENT_NEEDED_BUT_FOUND_DOCUMENT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 72
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "UNKNOWN_CLASS"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNKNOWN_CLASS:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 73
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "FAILED_TO_GENERATE_SCHEMA"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->FAILED_TO_GENERATE_SCHEMA:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 74
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "ERROR_PROCESSING_SCHEMA"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->ERROR_PROCESSING_SCHEMA:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 75
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    const-string v1, "ILLEGAL_CONTENT"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->ILLEGAL_CONTENT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 49
    const/16 v0, 0x1a

    new-array v0, v0, [Lae/com/sun/xml/bind/v2/runtime/Messages;

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/Messages;->ILLEGAL_PARAMETER:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v1, v0, v3

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNABLE_TO_FIND_CONVERSION_METHOD:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v1, v0, v4

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/Messages;->MISSING_ID:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v1, v0, v5

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/Messages;->NOT_IMPLEMENTED_IN_2_0:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v1, v0, v6

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNRECOGNIZED_ELEMENT_NAME:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->TYPE_MISMATCH:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->MISSING_OBJECT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->NOT_IDENTIFIABLE:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->DANGLING_IDREF:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->NULL_OUTPUT_RESOLVER:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNABLE_TO_MARSHAL_NON_ELEMENT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNABLE_TO_MARSHAL_UNBOUND_CLASS:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNSUPPORTED_PROPERTY:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->NULL_PROPERTY_NAME:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->MUST_BE_X:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->NOT_MARSHALLABLE:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNSUPPORTED_RESULT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNSUPPORTED_ENCODING:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->SUBSTITUTED_BY_ANONYMOUS_TYPE:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->CYCLE_IN_MARSHALLER:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNABLE_TO_DISCOVER_EVENTHANDLER:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->ELEMENT_NEEDED_BUT_FOUND_DOCUMENT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNKNOWN_CLASS:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->FAILED_TO_GENERATE_SCHEMA:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->ERROR_PROCESSING_SCHEMA:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->ILLEGAL_CONTENT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    aput-object v2, v0, v1

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->$VALUES:[Lae/com/sun/xml/bind/v2/runtime/Messages;

    .line 78
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->rb:Ljava/util/ResourceBundle;

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

.method public static valueOf(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/Messages;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/Messages;

    return-object v0
.end method

.method public static values()[Lae/com/sun/xml/bind/v2/runtime/Messages;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->$VALUES:[Lae/com/sun/xml/bind/v2/runtime/Messages;

    invoke-virtual {v0}, [Lae/com/sun/xml/bind/v2/runtime/Messages;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lae/com/sun/xml/bind/v2/runtime/Messages;

    return-object v0
.end method


# virtual methods
.method public varargs format([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 86
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/Messages;->rb:Ljava/util/ResourceBundle;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/Messages;->name()Ljava/lang/String;

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
    .line 82
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
