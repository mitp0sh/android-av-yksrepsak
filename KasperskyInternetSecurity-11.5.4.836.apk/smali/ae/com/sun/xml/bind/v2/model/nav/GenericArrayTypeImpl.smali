.class final Lae/com/sun/xml/bind/v2/model/nav/GenericArrayTypeImpl;
.super Ljava/lang/Object;
.source "GenericArrayTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/GenericArrayType;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private genericComponentType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lae/com/sun/xml/bind/v2/model/nav/GenericArrayTypeImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/model/nav/GenericArrayTypeImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1
    .param p1, "ct"    # Ljava/lang/reflect/Type;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-boolean v0, Lae/com/sun/xml/bind/v2/model/nav/GenericArrayTypeImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/nav/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 83
    instance-of v2, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 84
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 86
    .local v0, "that":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 87
    .local v1, "thatComponentType":Ljava/lang/reflect/Type;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/nav/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 89
    .end local v0    # "that":Ljava/lang/reflect/GenericArrayType;
    .end local v1    # "thatComponentType":Ljava/lang/reflect/Type;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getGenericComponentType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/nav/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/nav/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/nav/GenericArrayTypeImpl;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 71
    .local v0, "componentType":Ljava/lang/reflect/Type;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v1, "sb":Ljava/lang/StringBuilder;
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 74
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "componentType":Ljava/lang/reflect/Type;
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :goto_0
    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 76
    .restart local v0    # "componentType":Ljava/lang/reflect/Type;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
