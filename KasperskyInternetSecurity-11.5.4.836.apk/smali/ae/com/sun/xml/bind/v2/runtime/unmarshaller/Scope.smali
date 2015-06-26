.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;
.super Ljava/lang/Object;
.source "Scope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "PropT:",
        "Ljava/lang/Object;",
        "ItemT:",
        "Ljava/lang/Object;",
        "PackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TPropT;>;"
        }
    .end annotation
.end field

.field private bean:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBeanT;"
        }
    .end annotation
.end field

.field public final context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

.field private lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
            "<TBeanT;TPropT;TItemT;TPackT;>;"
        }
    .end annotation
.end field

.field private pack:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPackT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)V
    .locals 0
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    .prologue
    .line 66
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope<TBeanT;TPropT;TItemT;TPackT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    .line 68
    return-void
.end method

.method private clean()Z
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope<TBeanT;TPropT;TItemT;TPackT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->bean:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->pack:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TPropT;>;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
            "<TBeanT;TPropT;TItemT;TPackT;>;TItemT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope<TBeanT;TPropT;TItemT;TPackT;>;"
    .local p1, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TPropT;>;"
    .local p2, "lister":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister<TBeanT;TPropT;TItemT;TPackT;>;"
    .local p3, "value":Ljava/lang/Object;, "TItemT;"
    :try_start_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getCurrentState()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    move-result-object v1

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->bean:Ljava/lang/Object;

    .line 116
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 117
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    .line 118
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->bean:Ljava/lang/Object;

    invoke-virtual {p2, v1, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->pack:Ljava/lang/Object;

    .line 121
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->pack:Ljava/lang/Object;

    invoke-virtual {p2, v1, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->addToPack(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lae/com/sun/xml/bind/api/AccessorException;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->handleGenericException(Ljava/lang/Exception;Z)V

    .line 125
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->getErrorInstance()Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    .line 126
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->getErrorInstance()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    goto :goto_0
.end method

.method public finish()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope<TBeanT;TPropT;TItemT;TPackT;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->pack:Ljava/lang/Object;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->bean:Ljava/lang/Object;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v0, v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->endPacking(Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    .line 100
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->reset()V

    .line 102
    :cond_0
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->clean()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :cond_1
    return-void
.end method

.method public hasStarted()Z
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope<TBeanT;TPropT;TItemT;TPackT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->bean:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope<TBeanT;TPropT;TItemT;TPackT;>;"
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->bean:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 83
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->clean()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 87
    :cond_0
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->bean:Ljava/lang/Object;

    .line 88
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 89
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->pack:Ljava/lang/Object;

    .line 90
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    .line 91
    :cond_1
    return-void
.end method

.method public start(Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TPropT;>;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
            "<TBeanT;TPropT;TItemT;TPackT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope<TBeanT;TPropT;TItemT;TPackT;>;"
    .local p1, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TPropT;>;"
    .local p2, "lister":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister<TBeanT;TPropT;TItemT;TPackT;>;"
    :try_start_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getCurrentState()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    move-result-object v1

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->bean:Ljava/lang/Object;

    .line 140
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 141
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    .line 142
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->bean:Ljava/lang/Object;

    invoke-virtual {p2, v1, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->pack:Ljava/lang/Object;
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Lae/com/sun/xml/bind/api/AccessorException;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->handleGenericException(Ljava/lang/Exception;Z)V

    .line 147
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->getErrorInstance()Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    .line 148
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->getErrorInstance()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    goto :goto_0
.end method
