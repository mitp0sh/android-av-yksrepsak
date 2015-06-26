.class public Lae/com/sun/xml/bind/unmarshaller/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# static fields
.field public static final ILLEGAL_READER_STATE:Ljava/lang/String; = "Unmarshaller.IllegalReaderState"

.field public static final NULL_READER:Ljava/lang/String; = "Unmarshaller.NullReader"

.field public static final UNDEFINED_PREFIX:Ljava/lang/String; = "Util.UndefinedPrefix"

.field public static final UNEXPECTED_ENTER_ATTRIBUTE:Ljava/lang/String; = "ContentHandlerEx.UnexpectedEnterAttribute"

.field public static final UNEXPECTED_ENTER_ELEMENT:Ljava/lang/String; = "ContentHandlerEx.UnexpectedEnterElement"

.field public static final UNEXPECTED_LEAVE_ATTRIBUTE:Ljava/lang/String; = "ContentHandlerEx.UnexpectedLeaveAttribute"

.field public static final UNEXPECTED_LEAVE_CHILD:Ljava/lang/String; = "ContentHandlerEx.UnexpectedLeaveChild"

.field public static final UNEXPECTED_LEAVE_ELEMENT:Ljava/lang/String; = "ContentHandlerEx.UnexpectedLeaveElement"

.field public static final UNEXPECTED_ROOT_ELEMENT:Ljava/lang/String; = "SAXUnmarshallerHandlerImpl.UnexpectedRootElement"

.field public static final UNEXPECTED_TEXT:Ljava/lang/String; = "ContentHandlerEx.UnexpectedText"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lae/com/sun/xml/bind/unmarshaller/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lae/com/sun/xml/bind/unmarshaller/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lae/com/sun/xml/bind/unmarshaller/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {p0, v0}, Lae/com/sun/xml/bind/unmarshaller/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 73
    const-class v1, Lae/com/sun/xml/bind/unmarshaller/Messages;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
