.class public Lcom/sun/istack/localization/LocalizableMessageFactory;
.super Ljava/lang/Object;
.source "LocalizableMessageFactory.java"


# instance fields
.field private final _bundlename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bundlename"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sun/istack/localization/LocalizableMessageFactory;->_bundlename:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public varargs getMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/istack/localization/Localizable;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 51
    new-instance v0, Lcom/sun/istack/localization/LocalizableMessage;

    iget-object v1, p0, Lcom/sun/istack/localization/LocalizableMessageFactory;->_bundlename:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcom/sun/istack/localization/LocalizableMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
