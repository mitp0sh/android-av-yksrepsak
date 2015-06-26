.class final Lcom/sun/xml/txw2/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final localName:Ljava/lang/String;

.field next:Lcom/sun/xml/txw2/Attribute;

.field final nsUri:Ljava/lang/String;

.field final value:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/sun/xml/txw2/Attribute;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/xml/txw2/Attribute;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/Attribute;->value:Ljava/lang/StringBuilder;

    .line 61
    sget-boolean v0, Lcom/sun/xml/txw2/Attribute;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_1
    iput-object p1, p0, Lcom/sun/xml/txw2/Attribute;->nsUri:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/sun/xml/txw2/Attribute;->localName:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method hasName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sun/xml/txw2/Attribute;->localName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/xml/txw2/Attribute;->nsUri:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
