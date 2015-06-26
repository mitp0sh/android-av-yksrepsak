.class final Lae/com/sun/xml/bind/v2/model/nav/WildcardTypeImpl;
.super Ljava/lang/Object;
.source "WildcardTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;


# instance fields
.field private final lb:[Ljava/lang/reflect/Type;

.field private final ub:[Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "ub"    # [Ljava/lang/reflect/Type;
    .param p2, "lb"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/nav/WildcardTypeImpl;->ub:[Ljava/lang/reflect/Type;

    .line 57
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/nav/WildcardTypeImpl;->lb:[Ljava/lang/reflect/Type;

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 73
    instance-of v2, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 74
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 75
    .local v0, "that":Ljava/lang/reflect/WildcardType;
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/nav/WildcardTypeImpl;->lb:[Ljava/lang/reflect/Type;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/nav/WildcardTypeImpl;->ub:[Ljava/lang/reflect/Type;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 78
    .end local v0    # "that":Ljava/lang/reflect/WildcardType;
    :cond_0
    return v1
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/nav/WildcardTypeImpl;->lb:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/nav/WildcardTypeImpl;->ub:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/nav/WildcardTypeImpl;->lb:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/nav/WildcardTypeImpl;->ub:[Ljava/lang/reflect/Type;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
