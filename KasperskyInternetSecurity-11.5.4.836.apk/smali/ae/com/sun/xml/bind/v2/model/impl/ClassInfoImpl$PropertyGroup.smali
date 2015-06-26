.class final enum Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;
.super Ljava/lang/Enum;
.source "ClassInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PropertyGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum ANY_ATTRIBUTE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

.field public static final enum ATTRIBUTE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

.field public static final enum ELEMENT:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

.field public static final enum ELEMENT_REF:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

.field public static final enum MAP:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

.field public static final enum TRANSIENT:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

.field public static final enum VALUE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;


# instance fields
.field final allowedsecondaryAnnotations:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x6

    .line 640
    const-class v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->$assertionsDisabled:Z

    .line 641
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    const-string v3, "TRANSIENT"

    new-array v4, v6, [Z

    fill-array-data v4, :array_0

    invoke-direct {v0, v3, v2, v4}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;-><init>(Ljava/lang/String;I[Z)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->TRANSIENT:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    .line 642
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    const-string v3, "ANY_ATTRIBUTE"

    new-array v4, v6, [Z

    fill-array-data v4, :array_1

    invoke-direct {v0, v3, v1, v4}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;-><init>(Ljava/lang/String;I[Z)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ANY_ATTRIBUTE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    .line 643
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    const-string v3, "ATTRIBUTE"

    new-array v4, v6, [Z

    fill-array-data v4, :array_2

    invoke-direct {v0, v3, v7, v4}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;-><init>(Ljava/lang/String;I[Z)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ATTRIBUTE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    .line 644
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    const-string v3, "VALUE"

    new-array v4, v6, [Z

    fill-array-data v4, :array_3

    invoke-direct {v0, v3, v8, v4}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;-><init>(Ljava/lang/String;I[Z)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->VALUE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    .line 645
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    const-string v3, "ELEMENT"

    const/4 v4, 0x4

    new-array v5, v6, [Z

    fill-array-data v5, :array_4

    invoke-direct {v0, v3, v4, v5}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;-><init>(Ljava/lang/String;I[Z)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ELEMENT:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    .line 646
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    const-string v3, "ELEMENT_REF"

    const/4 v4, 0x5

    new-array v5, v6, [Z

    fill-array-data v5, :array_5

    invoke-direct {v0, v3, v4, v5}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;-><init>(Ljava/lang/String;I[Z)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ELEMENT_REF:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    .line 647
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    const-string v3, "MAP"

    new-array v4, v6, [Z

    fill-array-data v4, :array_6

    invoke-direct {v0, v3, v6, v4}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;-><init>(Ljava/lang/String;I[Z)V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->MAP:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    .line 640
    const/4 v0, 0x7

    new-array v0, v0, [Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    sget-object v3, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->TRANSIENT:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    aput-object v3, v0, v2

    sget-object v2, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ANY_ATTRIBUTE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    aput-object v2, v0, v1

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ATTRIBUTE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    aput-object v1, v0, v7

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->VALUE:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ELEMENT:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->ELEMENT_REF:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    aput-object v2, v0, v1

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->MAP:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    aput-object v1, v0, v6

    sput-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->$VALUES:[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    .line 641
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 642
    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 643
    nop

    :array_2
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    .line 644
    nop

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    .line 645
    nop

    :array_4
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 646
    nop

    :array_5
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 647
    nop

    :array_6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Z)V
    .locals 4
    .param p3, "bits"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)V"
        }
    .end annotation

    .prologue
    .line 656
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 657
    const/4 v1, 0x0

    .line 658
    .local v1, "mask":I
    sget-boolean v2, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    array-length v2, p3

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->SECONDARY_ANNOTATIONS:[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;
    invoke-static {}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->access$300()[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    move-result-object v3

    array-length v3, v3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 659
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_2

    .line 660
    aget-boolean v2, p3, v0

    if-eqz v2, :cond_1

    .line 661
    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->SECONDARY_ANNOTATIONS:[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;
    invoke-static {}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->access$300()[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    move-result-object v2

    aget-object v2, v2, v0

    iget v2, v2, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->bitMask:I

    or-int/2addr v1, v2

    .line 659
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    :cond_2
    xor-int/lit8 v2, v1, -0x1

    iput v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->allowedsecondaryAnnotations:I

    .line 664
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 640
    const-class v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    return-object v0
.end method

.method public static values()[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;
    .locals 1

    .prologue
    .line 640
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->$VALUES:[Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    invoke-virtual {v0}, [Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;

    return-object v0
.end method


# virtual methods
.method allows(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;)Z
    .locals 2
    .param p1, "a"    # Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;

    .prologue
    .line 667
    iget v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertyGroup;->allowedsecondaryAnnotations:I

    iget v1, p1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$SecondaryAnnotation;->bitMask:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
