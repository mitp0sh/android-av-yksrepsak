.class public abstract Lae/com/sun/xml/bind/v2/runtime/Coordinator;
.super Ljava/lang/Object;
.source "Coordinator.java"

# interfaces
.implements Lae/javax/xml/bind/ValidationEventHandler;
.implements Lorg/xml/sax/ErrorHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final activeTable:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static debugTableNPE:Z


# instance fields
.field private final adapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter;",
            ">;",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public guyWhoSetTheTableToNull:Ljava/lang/Exception;

.field private old:Ljava/lang/Object;

.field private table:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->$assertionsDisabled:Z

    .line 174
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/Coordinator$1;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/Coordinator$1;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->activeTable:Ljava/lang/ThreadLocal;

    .line 230
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lae/com/sun/xml/bind/v2/runtime/Coordinator;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".debugTableNPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->debugTableNPE:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_1
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->adapters:Ljava/util/HashMap;

    return-void
.end method

.method public static _getInstance()Lae/com/sun/xml/bind/v2/runtime/Coordinator;
    .locals 2

    .prologue
    .line 170
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->activeTable:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;

    return-object v0
.end method

.method private propagateEvent(ILorg/xml/sax/SAXParseException;)V
    .locals 5
    .param p1, "severity"    # I
    .param p2, "saxException"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v2, Lae/javax/xml/bind/helpers/ValidationEventImpl;

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->getLocation()Lae/javax/xml/bind/ValidationEventLocator;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;)V

    .line 209
    .local v2, "ve":Lae/javax/xml/bind/helpers/ValidationEventImpl;
    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v2, v0}, Lae/javax/xml/bind/helpers/ValidationEventImpl;->setLinkedException(Ljava/lang/Throwable;)V

    .line 218
    :goto_0
    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->handleEvent(Lae/javax/xml/bind/ValidationEvent;)Z

    move-result v1

    .line 219
    .local v1, "result":Z
    if-nez v1, :cond_1

    .line 222
    throw p2

    .line 213
    .end local v1    # "result":Z
    :cond_0
    invoke-virtual {v2, p2}, Lae/javax/xml/bind/helpers/ValidationEventImpl;->setLinkedException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 224
    .restart local v1    # "result":Z
    :cond_1
    return-void
.end method


# virtual methods
.method public containsAdapter(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->adapters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final error(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->propagateEvent(ILorg/xml/sax/SAXParseException;)V

    .line 193
    return-void
.end method

.method public final fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->propagateEvent(ILorg/xml/sax/SAXParseException;)V

    .line 201
    return-void
.end method

.method public final getAdapter(Ljava/lang/Class;)Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->adapters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    .line 101
    .local v0, "v":Lae/javax/xml/bind/annotation/adapters/XmlAdapter;, "TT;"
    if-nez v0, :cond_0

    .line 102
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/ClassFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "v":Lae/javax/xml/bind/annotation/adapters/XmlAdapter;, "TT;"
    check-cast v0, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    .line 103
    .restart local v0    # "v":Lae/javax/xml/bind/annotation/adapters/XmlAdapter;, "TT;"
    invoke-virtual {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->putAdapter(Ljava/lang/Class;Lae/javax/xml/bind/annotation/adapters/XmlAdapter;)Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    .line 105
    :cond_0
    return-object v0
.end method

.method protected abstract getLocation()Lae/javax/xml/bind/ValidationEventLocator;
.end method

.method protected final popCoordinator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->table:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 165
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->table:[Ljava/lang/Object;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->old:Ljava/lang/Object;

    aput-object v1, v0, v2

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->old:Ljava/lang/Object;

    .line 167
    return-void
.end method

.method protected final pushCoordinator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->table:[Ljava/lang/Object;

    aget-object v0, v0, v1

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->old:Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->table:[Ljava/lang/Object;

    aput-object p0, v0, v1

    .line 158
    return-void
.end method

.method public final putAdapter(Ljava/lang/Class;Lae/javax/xml/bind/annotation/adapters/XmlAdapter;)Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
    .locals 1
    .param p2, "a"    # Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter;",
            ">;",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter;",
            ")",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lae/javax/xml/bind/annotation/adapters/XmlAdapter;>;"
    if-nez p2, :cond_0

    .line 88
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->adapters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->adapters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    goto :goto_0
.end method

.method protected final resetThreadAffinity()V
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->activeTable:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->activeTable:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 147
    :cond_0
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->debugTableNPE:Z

    if-eqz v0, :cond_1

    .line 148
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->guyWhoSetTheTableToNull:Ljava/lang/Exception;

    .line 149
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->table:[Ljava/lang/Object;

    .line 150
    return-void
.end method

.method protected final setThreadAffinity()V
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->activeTable:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->table:[Ljava/lang/Object;

    .line 136
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->table:[Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 137
    :cond_0
    return-void
.end method

.method public final warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->propagateEvent(ILorg/xml/sax/SAXParseException;)V

    .line 197
    return-void
.end method
