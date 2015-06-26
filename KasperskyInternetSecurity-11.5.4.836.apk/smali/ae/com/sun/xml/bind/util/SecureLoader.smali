.class Lae/com/sun/xml/bind/util/SecureLoader;
.super Ljava/lang/Object;
.source "SecureLoader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getClassClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 64
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lae/com/sun/xml/bind/util/SecureLoader$2;

    invoke-direct {v0, p0}, Lae/com/sun/xml/bind/util/SecureLoader$2;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lae/com/sun/xml/bind/util/SecureLoader$1;

    invoke-direct {v0}, Lae/com/sun/xml/bind/util/SecureLoader$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method static getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lae/com/sun/xml/bind/util/SecureLoader$3;

    invoke-direct {v0}, Lae/com/sun/xml/bind/util/SecureLoader$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_0
.end method
