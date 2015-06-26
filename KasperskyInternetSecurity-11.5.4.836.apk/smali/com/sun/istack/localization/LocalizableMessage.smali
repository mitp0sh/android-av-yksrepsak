.class public final Lcom/sun/istack/localization/LocalizableMessage;
.super Ljava/lang/Object;
.source "LocalizableMessage.java"

# interfaces
.implements Lcom/sun/istack/localization/Localizable;


# instance fields
.field private final _args:[Ljava/lang/Object;

.field private final _bundlename:Ljava/lang/String;

.field private final _key:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "bundlename"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sun/istack/localization/LocalizableMessage;->_bundlename:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/sun/istack/localization/LocalizableMessage;->_key:Ljava/lang/String;

    .line 51
    if-nez p3, :cond_0

    .line 52
    const/4 v0, 0x0

    new-array p3, v0, [Ljava/lang/Object;

    .line 53
    :cond_0
    iput-object p3, p0, Lcom/sun/istack/localization/LocalizableMessage;->_args:[Ljava/lang/Object;

    .line 54
    return-void
.end method


# virtual methods
.method public getArguments()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sun/istack/localization/LocalizableMessage;->_args:[Ljava/lang/Object;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sun/istack/localization/LocalizableMessage;->_key:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sun/istack/localization/LocalizableMessage;->_bundlename:Ljava/lang/String;

    return-object v0
.end method
