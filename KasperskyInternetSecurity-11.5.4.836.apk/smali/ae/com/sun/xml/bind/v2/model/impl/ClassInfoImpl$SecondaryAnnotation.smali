.class final enum Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;
.super Ljava/lang/Enum;
.source "ClassInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SecondaryAnnotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

.field public static final enum BINARY:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

.field public static final enum ELEMENT_WRAPPER:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

.field public static final enum ID_IDREF:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

.field public static final enum JAVA_TYPE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

.field public static final enum LIST:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

.field public static final enum SCHEMA_TYPE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;


# instance fields
.field final bitMask:I

.field final members:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 609
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    const-string v1, "JAVA_TYPE"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v7, v6, v2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;-><init>(Ljava/lang/String;II[Ljava/lang/Class;)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->JAVA_TYPE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    .line 610
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    const-string v1, "ID_IDREF"

    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, Lae/javax/xml/bind/annotation/XmlID;

    aput-object v3, v2, v7

    const-class v3, Lae/javax/xml/bind/annotation/XmlIDREF;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v6, v8, v2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;-><init>(Ljava/lang/String;II[Ljava/lang/Class;)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->ID_IDREF:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    .line 611
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    const-string v1, "BINARY"

    new-array v2, v9, [Ljava/lang/Class;

    const-class v3, Lae/javax/xml/bind/annotation/XmlInlineBinaryData;

    aput-object v3, v2, v7

    const-class v3, Lae/javax/xml/bind/annotation/XmlMimeType;

    aput-object v3, v2, v6

    const-class v3, Lae/javax/xml/bind/annotation/XmlAttachmentRef;

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v8, v10, v2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;-><init>(Ljava/lang/String;II[Ljava/lang/Class;)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->BINARY:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    .line 612
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    const-string v1, "ELEMENT_WRAPPER"

    const/16 v2, 0x8

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Lae/javax/xml/bind/annotation/XmlElementWrapper;

    aput-object v4, v3, v7

    invoke-direct {v0, v1, v9, v2, v3}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;-><init>(Ljava/lang/String;II[Ljava/lang/Class;)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->ELEMENT_WRAPPER:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    .line 613
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    const-string v1, "LIST"

    const/16 v2, 0x10

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Lae/javax/xml/bind/annotation/XmlList;

    aput-object v4, v3, v7

    invoke-direct {v0, v1, v10, v2, v3}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;-><init>(Ljava/lang/String;II[Ljava/lang/Class;)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->LIST:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    .line 614
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    const-string v1, "SCHEMA_TYPE"

    const/4 v2, 0x5

    const/16 v3, 0x20

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Lae/javax/xml/bind/annotation/XmlSchemaType;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;-><init>(Ljava/lang/String;II[Ljava/lang/Class;)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->SCHEMA_TYPE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    .line 608
    const/4 v0, 0x6

    new-array v0, v0, [Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->JAVA_TYPE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    aput-object v1, v0, v7

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->ID_IDREF:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    aput-object v1, v0, v6

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->BINARY:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    aput-object v1, v0, v8

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->ELEMENT_WRAPPER:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    aput-object v1, v0, v9

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->LIST:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    aput-object v1, v0, v10

    const/4 v1, 0x5

    sget-object v2, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->SCHEMA_TYPE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    aput-object v2, v0, v1

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->$VALUES:[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/Class;)V
    .locals 0
    .param p3, "bitMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 626
    .local p4, "members":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 627
    iput p3, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->bitMask:I

    .line 628
    iput-object p4, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->members:[Ljava/lang/Class;

    .line 629
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 608
    const-class v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    return-object v0
.end method

.method public static values()[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;
    .locals 1

    .prologue
    .line 608
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->$VALUES:[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    invoke-virtual {v0}, [Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    return-object v0
.end method
