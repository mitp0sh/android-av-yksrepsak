.class final Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector$1;
.super Ljava/lang/Object;
.source "Injector.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 177
    # getter for: Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->defineClass:Ljava/lang/reflect/Method;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->access$000()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 178
    # getter for: Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->resolveClass:Ljava/lang/reflect/Method;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->access$100()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 179
    # getter for: Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->findLoadedClass:Ljava/lang/reflect/Method;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->access$200()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 180
    const/4 v0, 0x0

    return-object v0
.end method
