.class public Lae/com/sun/xml/bind/AccessorFactoryImpl;
.super Ljava/lang/Object;
.source "AccessorFactoryImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/InternalAccessorFactory;


# static fields
.field private static instance:Lae/com/sun/xml/bind/AccessorFactoryImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lae/com/sun/xml/bind/AccessorFactoryImpl;

    invoke-direct {v0}, Lae/com/sun/xml/bind/AccessorFactoryImpl;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/AccessorFactoryImpl;->instance:Lae/com/sun/xml/bind/AccessorFactoryImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lae/com/sun/xml/bind/AccessorFactoryImpl;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lae/com/sun/xml/bind/AccessorFactoryImpl;->instance:Lae/com/sun/xml/bind/AccessorFactoryImpl;

    return-object v0
.end method


# virtual methods
.method public createFieldAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;Z)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Class;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "readOnly"    # Z

    .prologue
    .line 70
    if-eqz p3, :cond_0

    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$ReadOnlyFieldReflection;

    invoke-direct {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$ReadOnlyFieldReflection;-><init>(Ljava/lang/reflect/Field;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;

    invoke-direct {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_0
.end method

.method public createFieldAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;ZZ)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Class;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "readOnly"    # Z
    .param p4, "supressWarning"    # Z

    .prologue
    .line 87
    if-eqz p3, :cond_0

    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$ReadOnlyFieldReflection;

    invoke-direct {v0, p2, p4}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$ReadOnlyFieldReflection;-><init>(Ljava/lang/reflect/Field;Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;

    invoke-direct {v0, p2, p4}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_0
.end method

.method public createPropertyAccessor(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Class;
    .param p2, "getter"    # Ljava/lang/reflect/Method;
    .param p3, "setter"    # Ljava/lang/reflect/Method;

    .prologue
    .line 103
    if-nez p2, :cond_0

    .line 104
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$SetterOnlyReflection;

    invoke-direct {v0, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$SetterOnlyReflection;-><init>(Ljava/lang/reflect/Method;)V

    .line 109
    :goto_0
    return-object v0

    .line 106
    :cond_0
    if-nez p3, :cond_1

    .line 107
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterOnlyReflection;

    invoke-direct {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterOnlyReflection;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_0

    .line 109
    :cond_1
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;

    invoke-direct {v0, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto :goto_0
.end method
